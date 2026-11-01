package wg;

import android.net.ParseException;
import android.text.TextUtils;
import android.util.MalformedJsonException;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonParseException;
import com.hisavana.common.bean.TAdErrorCode;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.net.exception.ApiException;
import com.tn.lib.net.exception.ServerException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.ResponseBody;
import org.json.JSONException;
import retrofit2.HttpException;
import retrofit2.j0;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0957a f77671a = new C0957a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f77672b = 1000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f77673c = 110004;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f77674d = 9003;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f77675e = 1102;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f77676f = 11000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f77677g = 11001;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f77678h = 1032;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f77679i = TAdErrorCode.CODE_CURRENT_OBJECT_IS_DESTROYED;

    /* JADX INFO: renamed from: wg.a$a, reason: collision with other inner class name */
    public static final class C0957a {
        private C0957a() {
        }

        public /* synthetic */ C0957a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ApiException a(Throwable th2) {
            ApiException apiException;
            ResponseBody responseBodyD;
            if (th2 instanceof HttpException) {
                HttpException httpException = (HttpException) th2;
                j0<?> j0VarResponse = httpException.response();
                BaseDto baseDto = (BaseDto) o.d((j0VarResponse == null || (responseBodyD = j0VarResponse.d()) == null) ? null : responseBodyD.string(), BaseDto.class);
                if (baseDto == null) {
                    return new ApiException(th2, String.valueOf(httpException.code()), httpException.message());
                }
                if (TextUtils.isEmpty(baseDto.getMsg())) {
                    baseDto.setMsg("Oops，something went wrong");
                }
                return new ApiException(th2, String.valueOf(httpException.code()), baseDto.getMsg());
            }
            if (th2 instanceof ServerException) {
                ServerException serverException = (ServerException) th2;
                return new ApiException(th2, serverException.getErrCode(), serverException.getErrMsg());
            }
            if ((th2 instanceof JsonParseException) || (th2 instanceof JSONException) || (th2 instanceof ParseException) || (th2 instanceof MalformedJsonException)) {
                apiException = new ApiException(th2, String.valueOf(a.f77676f), "Oops，something went wrong");
            } else if (th2 instanceof ConnectException) {
                apiException = new ApiException(th2, String.valueOf(a.f77674d), "Oops，something went wrong");
            } else if (th2 instanceof SocketTimeoutException) {
                apiException = new ApiException(th2, String.valueOf(a.f77679i), "Oops，something went wrong");
            } else if (th2 instanceof UnknownHostException) {
                apiException = new ApiException(th2, String.valueOf(a.f77674d), "Oops，something went wrong");
            } else {
                if (th2 == null) {
                    throw new RuntimeException("未知异常");
                }
                apiException = new ApiException(th2, String.valueOf(a.f77672b), "Oops，something went wrong");
            }
            return apiException;
        }
    }
}
