package com.transsion.baselib.helper;

import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.common.base.p;
import com.meituan.android.walle.ChannelReader;
import com.transsion.core.utils.ToastUtil;
import com.transsion.search_pugc.fragment.hot.SearchHotFragment;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f43264a = new b();

    private b() {
    }

    private final String a(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        if (Intrinsics.c(str, "/search/activity/search_manager")) {
            return SearchHotFragment.PAGE_NAME;
        }
        return Intrinsics.c(str, "/download/panel_activity") ? "/download/ugc_my_downloads" : str;
    }

    private final Uri b(Uri uri) {
        return uri;
    }

    private final boolean f(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return CollectionsKt.o("/rank/all", "/home/movieFilter", "/home/playlist", "/movie/staff", "/home/category").contains(str);
    }

    public final ReferrerBean c(Uri uri) {
        String queryParameter;
        String string;
        ReferrerBean referrerBean = new ReferrerBean(null, null, null, null, null, 31, null);
        if (StringsKt.c0(String.valueOf(uri != null ? uri.getPath() : null), "/share", false, 2, null)) {
            referrerBean.setUtmSource("share");
        } else {
            if (uri != null && (string = uri.toString()) != null && StringsKt.c0(string, "utm_source", false, 2, null)) {
                Uri uri2 = Uri.parse(UrlUtils.QUESTION_MARK + uri);
                String strValueOf = String.valueOf(uri2.getQueryParameter("utm_source"));
                referrerBean.setUtmContent(uri2.getQueryParameter("utm_content"));
                referrerBean.setUtmCampaign(uri2.getQueryParameter("utm_campaign"));
                if (!TextUtils.isEmpty(strValueOf)) {
                    referrerBean.setUtmSource(strValueOf);
                    return referrerBean;
                }
            }
            String str = "";
            if (!TextUtils.isEmpty(uri != null ? uri.getQueryParameter("utm_source") : null) ? !(uri == null || (queryParameter = uri.getQueryParameter("utm_source")) == null) : !(uri == null || (queryParameter = uri.getQueryParameter(ChannelReader.CHANNEL_KEY)) == null)) {
                str = queryParameter;
            }
            referrerBean.setUtmSource(str);
            referrerBean.setUtmContent(uri != null ? uri.getQueryParameter("utm_content") : null);
            referrerBean.setUtmCampaign(uri != null ? uri.getQueryParameter("utm_campaign") : null);
        }
        return referrerBean;
    }

    public final ReferrerBean d(String str) {
        return (str == null || str.length() == 0) ? new ReferrerBean(null, null, null, null, null, 31, null) : c(Uri.parse(str));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0029 A[RETURN, SYNTHETIC] */
    public final boolean e(Uri uri) {
        if (!Intrinsics.c(uri != null ? uri.getScheme() : null, "https")) {
            if (Intrinsics.c(uri != null ? uri.getScheme() : null, "http")) {
                if (p.b(uri.getQuery())) {
                    return true;
                }
            }
        } else if (p.b(uri.getQuery())) {
            return true;
        }
        return false;
    }

    public final Uri g(Uri uri) {
        int i11;
        String str;
        List listS0;
        String str2 = null;
        if (uri == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            String queryParameter = uri.getQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE);
            if (queryParameter == null) {
                queryParameter = "";
            }
            if (queryParameter.length() > 0) {
                if (ak.g.f639a.b()) {
                    b bVar = f43264a;
                    if (bVar.f(queryParameter)) {
                        return new Uri.Builder().encodedPath("/main/tab").build();
                    }
                    String strA = bVar.a(queryParameter);
                    if (!Intrinsics.c(strA, queryParameter)) {
                        Uri.Builder builderClearQuery = uri.buildUpon().path(strA).clearQuery();
                        Set<String> queryParameterNames = uri.getQueryParameterNames();
                        Intrinsics.g(queryParameterNames, "getQueryParameterNames(...)");
                        for (String str3 : queryParameterNames) {
                            if (Intrinsics.c(str3, NativeComponentConstants.KEY_COMPONENT_TYPE)) {
                                builderClearQuery.appendQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE, strA);
                            } else {
                                String queryParameter2 = uri.getQueryParameter(str3);
                                if (queryParameter2 != null) {
                                    builderClearQuery.appendQueryParameter(str3, queryParameter2);
                                }
                            }
                        }
                        Uri uriBuild = builderClearQuery.build();
                        Uri uriB = f43264a.b(uriBuild);
                        return uriB == null ? uriBuild : uriB;
                    }
                    if (Intrinsics.c(queryParameter, "/movie/detail")) {
                        String queryParameter3 = uri.getQueryParameter("id");
                        Uri.Builder builderClearQuery2 = uri.buildUpon().path("/ugc_video/detail").clearQuery();
                        Set<String> queryParameterNames2 = uri.getQueryParameterNames();
                        Intrinsics.g(queryParameterNames2, "getQueryParameterNames(...)");
                        for (String str4 : queryParameterNames2) {
                            if (Intrinsics.c(str4, "id")) {
                                if (queryParameter3 != null) {
                                    builderClearQuery2.appendQueryParameter("subject_id", queryParameter3);
                                }
                            } else if (Intrinsics.c(str4, NativeComponentConstants.KEY_COMPONENT_TYPE)) {
                                builderClearQuery2.appendQueryParameter(NativeComponentConstants.KEY_COMPONENT_TYPE, "/ugc_video/detail");
                            } else {
                                String queryParameter4 = uri.getQueryParameter(str4);
                                if (queryParameter4 != null) {
                                    builderClearQuery2.appendQueryParameter(str4, queryParameter4);
                                }
                            }
                        }
                        if (queryParameter3 == null) {
                            String path = uri.getPath();
                            if (path != null && (listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null)) != null) {
                                str2 = (String) CollectionsKt.v0(listS0);
                            }
                            if (str2 != null) {
                                builderClearQuery2.appendQueryParameter("subject_id", str2);
                            }
                        }
                        return builderClearQuery2.build();
                    }
                }
                Uri uriBuild2 = uri.buildUpon().path(queryParameter).build();
                Uri uriB2 = f43264a.b(uriBuild2);
                return uriB2 == null ? uriBuild2 : uriB2;
            }
            HashMap map = new HashMap();
            map.put("subject", "/movie/detail");
            map.put("post", "/post/detail");
            String string = uri.toString();
            Intrinsics.g(string, "toString(...)");
            if (TextUtils.isEmpty(string)) {
                i11 = 0;
            } else {
                i11 = 0;
                List listS1 = StringsKt.S0(string, new String[]{"-"}, false, 0, 6, null);
                if (listS1.size() >= 2) {
                    String str5 = (String) map.get(listS1.get(0));
                    String str6 = (String) listS1.get(1);
                    if (str5 != null) {
                        if (ak.g.f639a.b()) {
                            b bVar2 = f43264a;
                            if (bVar2.f(str5)) {
                                return new Uri.Builder().encodedPath("/main/tab").build();
                            }
                            String strA2 = bVar2.a(str5);
                            if (strA2 != null && !Intrinsics.c(strA2, str5)) {
                                return new Uri.Builder().encodedPath(strA2).encodedQuery("id=" + str6).build();
                            }
                            if (Intrinsics.c(str5, "/movie/detail")) {
                                return new Uri.Builder().encodedPath("/ugc_video/detail").encodedQuery("subject_id=" + str6).build();
                            }
                        }
                        return new Uri.Builder().encodedPath(str5).encodedQuery("id=" + str6).build();
                    }
                }
            }
            String path2 = uri.getPath();
            String str7 = path2 == null ? "" : path2;
            for (int i12 = i11; i12 < str7.length(); i12++) {
                if (str7.charAt(i12) == '/') {
                    i11++;
                }
            }
            if (i11 < 2) {
                return null;
            }
            if (ak.g.f639a.b()) {
                b bVar3 = f43264a;
                if (bVar3.f(str7)) {
                    return new Uri.Builder().encodedPath("/main/tab").build();
                }
                String strA3 = bVar3.a(str7);
                if (!Intrinsics.c(strA3, str7)) {
                    Uri.Builder builderPath = uri.buildUpon().path(strA3);
                    Uri uriB3 = bVar3.b(builderPath.build());
                    return uriB3 == null ? builderPath.build() : uriB3;
                }
                if (Intrinsics.c(str7, "/movie/detail")) {
                    String queryParameter5 = uri.getQueryParameter("id");
                    Uri.Builder builderClearQuery3 = uri.buildUpon().path("/ugc_video/detail").clearQuery();
                    Set<String> queryParameterNames3 = uri.getQueryParameterNames();
                    Intrinsics.g(queryParameterNames3, "getQueryParameterNames(...)");
                    for (String str8 : queryParameterNames3) {
                        if (!Intrinsics.c(str8, "id")) {
                            String queryParameter6 = uri.getQueryParameter(str8);
                            if (queryParameter6 != null) {
                                builderClearQuery3.appendQueryParameter(str8, queryParameter6);
                            }
                        } else if (queryParameter5 != null) {
                            builderClearQuery3.appendQueryParameter("subject_id", queryParameter5);
                        }
                    }
                    if (queryParameter5 == null && (str = (String) CollectionsKt.v0(StringsKt.S0(str7, new String[]{"/"}, false, 0, 6, null))) != null) {
                        builderClearQuery3.appendQueryParameter("subject_id", str);
                    }
                    return builderClearQuery3.build();
                }
            }
            Uri uriB4 = f43264a.b(uri);
            return uriB4 == null ? uri : uriB4;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            if (Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2))) != null) {
                ToastUtil.f("请升级最新版本");
            }
            return uri;
        }
    }
}
