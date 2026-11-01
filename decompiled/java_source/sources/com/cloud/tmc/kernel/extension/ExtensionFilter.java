package com.cloud.tmc.kernel.extension;

import com.cloud.tmc.kernel.extension.Extension;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface ExtensionFilter<T extends Extension> {
    List<T> filter(List<T> list);
}
