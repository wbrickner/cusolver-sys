set -exu

bindgen \
  --allowlist-type="^cusolver.*" \
  --allowlist-function="^cusolver.*" \
  --default-enum-style=rust \
  --no-doc-comments \
  --with-derive-default \
  --with-derive-eq \
  --with-derive-hash \
  --with-derive-ord \
  cusolver_wrapper.h \
  -- -I/opt/cuda/include \
  > src/cusolver.rs