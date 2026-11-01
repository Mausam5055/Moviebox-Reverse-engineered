package dt;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.core.utils.ToastUtil;
import java.util.HashMap;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f61432a = new a();

    private a() {
    }

    public final Uri a(Uri uri) {
        Object objM454constructorimpl;
        if (uri == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String queryParameter = uri.getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE);
            String str = "";
            if (queryParameter == null) {
                queryParameter = "";
            }
            if (queryParameter.length() > 0) {
                return uri.buildUpon().path(queryParameter).build();
            }
            HashMap map = new HashMap();
            map.put("subject", "/movie/detail");
            map.put("post", "/post/detail");
            String string = uri.toString();
            Intrinsics.g(string, "toString(...)");
            if (!TextUtils.isEmpty(string)) {
                List listS0 = StringsKt.S0(string, new String[]{"-"}, false, 0, 6, null);
                if (listS0.size() >= 2) {
                    String str2 = (String) map.get(listS0.get(0));
                    String str3 = (String) listS0.get(1);
                    return new Uri.Builder().encodedPath(str2).encodedQuery("id=" + str3).build();
                }
            }
            String path = uri.getPath();
            if (path != null) {
                str = path;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < str.length(); i12++) {
                if (str.charAt(i12) == '/') {
                    i11++;
                }
            }
            if (i11 < 2) {
                return null;
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
                ToastUtil.f("请升级最新版本");
            }
            return uri;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }
}
