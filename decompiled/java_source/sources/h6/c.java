package h6;

import com.bykv.vk.openvk.Sj.Sj.sP.sP.uA;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List f64377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    b f64378b;

    public abstract InputStream a();

    public abstract String b();

    public b c() {
        return this.f64378b;
    }

    public abstract int d();

    protected uA.c e(String str) {
        List list;
        if (str != null && (list = this.f64377a) != null && list.size() > 0) {
            for (uA.c cVar : this.f64377a) {
                if (str.equals(cVar.f20287a)) {
                    return cVar;
                }
            }
        }
        return null;
    }

    protected String f(int i11) {
        switch (i11) {
            case 200:
                return "OK";
            case 201:
                return "Created";
            case AD_CONSUMED_VALUE:
                return "Accepted";
            case AD_IS_LOADING_VALUE:
                return "Non-Authoritative";
            case AD_ALREADY_LOADED_VALUE:
                return "No Content";
            case AD_IS_PLAYING_VALUE:
                return "Reset Content";
            case AD_ALREADY_FAILED_VALUE:
                return "Partial Content";
            default:
                switch (i11) {
                    case 300:
                        return "Multiple Choices";
                    case MRAID_ERROR_VALUE:
                        return "Moved Permanently";
                    case INVALID_IFA_STATUS_VALUE:
                        return "Temporary Redirect";
                    case 303:
                        return "See Other";
                    case AD_EXPIRED_VALUE:
                        return "Not Modified";
                    case MRAID_BRIDGE_ERROR_VALUE:
                        return "Use Proxy";
                    default:
                        switch (i11) {
                            case 400:
                                return "Bad Request";
                            case 401:
                                return "Unauthorized";
                            case TTAdConstant.AD_ID_IS_NULL_CODE /* 402 */:
                                return "Payment Required";
                            case TTAdConstant.DEEPLINK_UNAVAILABLE_CODE /* 403 */:
                                return "Forbidden";
                            case TTAdConstant.DEEPLINK_FALLBACK_CODE /* 404 */:
                                return "Not Found";
                            case TTAdConstant.DEEPLINK_FALLBACK_TYPE_CODE /* 405 */:
                                return "Method Not Allowed";
                            case TTAdConstant.LANDING_PAGE_TYPE_CODE /* 406 */:
                                return "Not Acceptable";
                            case TTAdConstant.DOWNLOAD_APP_INFO_CODE /* 407 */:
                                return "Proxy Authentication Required";
                            case TTAdConstant.DOWNLOAD_URL_CODE /* 408 */:
                                return "Request Time-Out";
                            case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                                return "Conflict";
                            case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                                return "Gone";
                            case TTAdConstant.IMAGE_CODE /* 411 */:
                                return "Length Required";
                            case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                                return "Precondition Failed";
                            case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                                return "Request Entity Too Large";
                            case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                                return "Request-URI Too Large";
                            case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                return "Unsupported Media Type";
                            default:
                                switch (i11) {
                                    case 500:
                                        return "Internal Server Error";
                                    case 501:
                                        return "Not Implemented";
                                    case 502:
                                        return "Bad Gateway";
                                    case 503:
                                        return "Service Unavailable";
                                    case 504:
                                        return "Gateway Timeout";
                                    case 505:
                                        return "HTTP Version Not Supported";
                                    default:
                                        return "";
                                }
                        }
                }
        }
    }

    public abstract String g(String str, String str2);

    public abstract List h();

    public abstract boolean i();

    public abstract String j();
}
