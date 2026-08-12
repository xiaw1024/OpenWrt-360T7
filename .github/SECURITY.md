# Security Policy / 安全政策

## Supported Versions / 支持版本

本项目主要维护 `main` 分支上的最新构建配置和后续生成的最新固件 Release。安全修复优先进入这两个位置，不承诺长期维护所有历史固件版本。

This project primarily maintains the latest build configuration on `main` and the latest firmware Releases generated afterward. Security fixes are prioritized for these targets; historical firmware versions are not guaranteed long-term support.

## Reporting a Vulnerability / 报告安全漏洞

请优先通过 GitHub **Private Vulnerability Reporting / Security Advisory** 私密报告 GitHub Actions workflow、Shell 命令注入、Secret/Token 泄露、恶意或被劫持的第三方依赖、固件供应链、未验证远程代码执行、恶意 package/feed、Release artifact 篡改或其他可能影响路由器安全的问题。如果仓库尚未启用该功能，请只在公开 Issue 中请求私密联系方式，不要公开未修复漏洞、Token、PoC 或其他敏感信息。

Please report GitHub Actions workflow flaws, shell injection, Secret/Token exposure, malicious or compromised dependencies, firmware supply-chain issues, unverified remote code execution, malicious packages/feeds, tampered Release artifacts, or other router security risks privately through GitHub **Private Vulnerability Reporting / Security Advisory**. If it is not enabled, use a public Issue only to request a private contact channel; do not disclose an unfixed vulnerability, token, PoC, or sensitive details publicly.

## What to Include / 报告内容

请提供漏洞描述、受影响的文件或 workflow、重现步骤、潜在影响、必要的 PoC 以及可选的修复建议。请勿提交真实 API Key、GitHub Token、PushPlus Token、路由器密码或其他真实凭据。

Include a description, affected files or workflows, reproduction steps, potential impact, a minimal PoC when necessary, and suggested remediation if available. Never submit real API keys, GitHub tokens, PushPlus tokens, router passwords, or other credentials.

## Scope / 安全范围

本仓库主要负责构建 workflow、OpenWrt 配置、自定义 Shell、feeds/package 引入和 Release 流程。OpenWrt、ImmortalWrt 和第三方插件自身的上游漏洞通常应报告给对应上游项目；如果风险由本仓库的版本选择、配置或集成方式引入，本仓库仍接受报告。

This repository is responsible for its build workflow, OpenWrt configuration, custom shell code, feed/package integration, and Release process. Upstream vulnerabilities in OpenWrt, ImmortalWrt, or third-party plugins should usually be reported upstream; this repository still accepts reports when its version selection, configuration, or integration exposes users to the issue.
