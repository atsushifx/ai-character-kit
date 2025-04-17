<#
.SYNOPSIS
    開発支援ツールとコミットフック (lefthook) を一括インストールするスクリプト

.DESCRIPTION
    このスクリプトは、Scoop と pnpm を使用して、
    開発ワークフローをサポートする複数のツールを一括インストールします。
    pnpm では --global オプションを使用し、プロジェクトによらずに使用できるようにします。

.NOTES
    @Version  1.1.0
    @Since    2025-03-04
    @Author   atsushifx <atsushifx@gmail.com>
    @License  MIT <https://opensource.org/licenses/MIT>

This project is licensed under the MIT License, see LICENSE for details
#>

# install using scoop
scoop install lefthook

# install using pnpm
$packages = @(
    "commitlint",
    "@commitlint/cli",
    "@commitlint/config-conventional",
    "@commitlint/types",
    "secretlint",
    "@secretlint/secretlint-rule-preset-recommend",
    "cspell"
) | Join-String -Separator " "

$command = "pnpm add --global " + $packages
Invoke-Expression $command
