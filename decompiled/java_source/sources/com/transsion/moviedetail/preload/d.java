package com.transsion.moviedetail.preload;

import android.os.Bundle;
import java.util.Collections;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d implements qm.c {
    @Override // qm.c
    public List a(String str, Bundle bundle) {
        List listEmptyList;
        String string;
        if (Intrinsics.c(str, "/movie/detail")) {
            Integer numValueOf = bundle != null ? Integer.valueOf(bundle.getInt("season")) : null;
            if (bundle == null || (string = bundle.getString("id")) == null || (listEmptyList = CollectionsKt.h(new b(string, numValueOf, false, 4, null), new MovieDetailDownloadListLoader(string), new MovieDetailResourcesSeasonLoader(string))) == null) {
                listEmptyList = Collections.emptyList();
                Intrinsics.g(listEmptyList, "emptyList(...)");
            }
        } else {
            listEmptyList = null;
        }
        if (listEmptyList != null) {
            return listEmptyList;
        }
        Intrinsics.z("iPreloadList");
        return null;
    }

    @Override // qm.c
    public String getPath() {
        return "/movie/detail";
    }
}
