package com.cloud.tmc.kernel.resolver;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class BoolPositiveResolver implements ResultResolver<Boolean> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.cloud.tmc.kernel.resolver.ResultResolver
    public Boolean resolve(List<Boolean> list) {
        boolean z10;
        if (list != null) {
            for (Boolean bool : list) {
                if (bool != null && bool.booleanValue()) {
                    z10 = true;
                }
            }
            z10 = false;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }
}
