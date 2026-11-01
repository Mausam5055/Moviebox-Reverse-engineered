package gm;

import android.net.Uri;
import com.cloud.tmc.kernel.utils.UrlUtils;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f63880a = new e();

    private e() {
    }

    public final boolean a(String url) {
        Object objM454constructorimpl;
        Intrinsics.h(url, "url");
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(url);
            String query = uri.getQuery();
            if (query == null) {
                String fragment = uri.getFragment();
                query = null;
                if (fragment != null) {
                    query = StringsKt.b1(fragment, UrlUtils.QUESTION_MARK, null, 2, null);
                }
            }
            String queryParameter = Uri.parse(UrlUtils.QUESTION_MARK + query).getQueryParameter("h5_bar");
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(queryParameter != null ? Boolean.parseBoolean(queryParameter) : false));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            System.out.println((Object) ("Error parsing URL: " + thM457exceptionOrNullimpl.getMessage()));
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }
}
