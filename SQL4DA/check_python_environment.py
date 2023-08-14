"""
@Description: 可以用来检查 Python 的版本和相关的库
@Author(s): Stephen CUI
@LastEditor(s): Stephen CUI
@CreatedTime: 2023-08-13 20:18:40
"""

import sys
import platform
from packaging import version


python_ver = platform.python_version()
if version.parse(python_ver) < version.parse('3.8'):
    print(
        f'[FAIL] We recommend Python 3.8 or later but found version {sys.version}')
else:
    print(f'[OK] You Python version is {sys.version}')


def get_packages(pkgs) -> list:
    versions = []
    for p in pkgs:
        try:
            # 无法导入
            imported = __import__(p)
            try:
                # 可以导入，但是没有找到版本信息
                versions.append(imported.__version__.split(' ')[0])
            except AttributeError:
                try:
                    versions.append(imported.version_info)
                except AttributeError:
                    versions.append('0.0')
        except ImportError:
            print(f'[FAIL]: {p} is not installed and/or cannot be imported')
            versions.append('N/A')
    return versions


def check_packages(d: dict) -> None:
    versions = get_packages(d.keys())
    for (pkg_name, suggest_ver), actual_ver in zip(d.items(), versions):
        if actual_ver == 'N/A':
            continue
        actual_ver, suggest_ver, way = version.parse(
            actual_ver), version.parse(suggest_ver[1]), suggest_ver[0]
        if way == '==':
            if actual_ver != suggest_ver:
                print(
                    f'[FAIL] {pkg_name:15} {actual_ver}, please install {suggest_ver}')
            else:
                print(f'[OK] {pkg_name} {actual_ver}')
        elif way == '>':
            if actual_ver > suggest_ver:
                print(
                    f'[OK] {pkg_name:15} {actual_ver}')
            else:
                print(
                    f'[FAIL] {pkg_name} {actual_ver}, please upgrade to {suggest_ver}')
        elif way == '<':
            if actual_ver < suggest_ver:
                print(f'[OK] {pkg_name:15} {actual_ver}')
            else:
                print(
                    f'[FAIL] {pkg_name} {actual_ver}, please downgrade to {suggest_ver}')


if __name__ == '__main__':
    d = {
        'numpy': ['>', '1.21.2'],
        'pandas': ['>', '1.3.2'],
        'sqlalchemy': ['<', '2.0.0'],
    }
    check_packages(d)
