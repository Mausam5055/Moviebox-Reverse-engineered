package androidx.media3.datasource.cache;

import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class l {
    public static long a(m mVar) {
        return mVar.get("exo_len", -1L);
    }

    public static Uri b(m mVar) {
        String str = mVar.get("exo_redir", (String) null);
        if (str == null) {
            return null;
        }
        return Uri.parse(str);
    }
}
