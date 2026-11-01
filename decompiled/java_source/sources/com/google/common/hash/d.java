package com.google.common.hash;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public interface d {
    HashCode hashObject(Object obj, Funnel funnel);

    HashCode hashString(CharSequence charSequence, Charset charset);

    e newHasher();
}
