package com.transsion.transfer.androidasync.http;

import android.net.Uri;

/* JADX INFO: loaded from: classes6.dex */
public class i extends j {
    public i(Uri uri) {
        super(uri, "POST");
    }

    public i(String str) {
        this(Uri.parse(str));
    }
}
