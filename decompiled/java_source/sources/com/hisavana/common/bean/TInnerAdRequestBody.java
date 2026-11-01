package com.hisavana.common.bean;

import com.hisavana.common.interfacz.WrapTAdAllianceListener;

/* JADX INFO: loaded from: classes4.dex */
public class TInnerAdRequestBody {
    private final WrapTAdAllianceListener innerAdListener;

    public static class Builder {
        private WrapTAdAllianceListener innerAdListener = null;

        public TInnerAdRequestBody build() {
            return new TInnerAdRequestBody(this);
        }

        public Builder setAdListener(WrapTAdAllianceListener wrapTAdAllianceListener) {
            this.innerAdListener = wrapTAdAllianceListener;
            return this;
        }
    }

    private TInnerAdRequestBody(Builder builder) {
        this.innerAdListener = builder.innerAdListener;
    }

    public WrapTAdAllianceListener getAdListener() {
        return this.innerAdListener;
    }
}
