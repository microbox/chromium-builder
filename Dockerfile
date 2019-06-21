FROM microbox/chromium-builder:source

RUN git pull --all
RUN gclient sync --with_branch_heads --with_tags --nohooks --no-bootstrap --deps=unix
RUN build/install-build-deps.sh --no-prompt
RUN gclient runhooks
