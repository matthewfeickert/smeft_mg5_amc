ARG BASE_IMAGE=scailfin/madgraph5-amc-nlo:mg5_amc3.3.1
FROM ${BASE_IMAGE} as base

ARG TARGET_BRANCH=v3.0.2
# Note: SMEFTsim is stil Python 2 only!? so need to have mg5_aMC convert on the
# fly with "set auto_convert_model T"
# Load SMEFTsim_U35_MwScheme_UFO as an example for the time being given that
# is shown in the tutorial: https://smeftsim.github.io/tutorials.html
RUN git clone --depth 1 https://github.com/SMEFTsim/SMEFTsim.git \
      --branch "${TARGET_BRANCH}" \
      --single-branch \
      /tmp/SMEFTsim && \
    cp -r /tmp/SMEFTsim/UFO_models/* $(dirname $(command -v mg5_aMC))/../models && \
    rm -rf /tmp/* && \
    echo "" && \
    echo "set auto_convert_model T" | mg5_aMC && \
    echo "import model SMEFTsim_U35_MwScheme_UFO" | mg5_aMC && \
    rm py.py
