package com.transsion.usercenter.profile;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.usercenter.profile.bean.BffUserProfileData;
import com.transsion.usercenter.profile.bean.MinePageInfo;
import com.transsion.usercenter.profile.bean.ProfileEntranceInfo;
import com.transsion.usercenter.profile.bean.ProfileInfo;
import com.transsion.usercenter.profile.bean.ProfileNewMessage;
import com.transsion.usercenter.profile.see.bean.ProfileSeeData;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J,\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0007\u0010\bJ,\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\t\u0010\bJ,\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\n\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\u000b\u0010\bJ/\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00050\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u000e\u0010\u000fJC\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00050\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0012\u001a\u00020\u00112\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u0014\u0010\u0015JM\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00050\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0012\u001a\u00020\u00112\b\b\u0003\u0010\u0016\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u0017\u0010\u0018JM\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00050\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0001\u0010\u0012\u001a\u00020\u00112\b\b\u0003\u0010\u0016\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u0019\u0010\u0018JM\u0010\u001b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00050\f2\b\b\u0001\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00112\b\b\u0001\u0010\u0012\u001a\u00020\u00112\b\b\u0003\u0010\u0016\u001a\u00020\u00112\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u001b\u0010\u001cJ%\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u00050\f2\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b\u001e\u0010\u001fJ*\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u00052\b\b\u0001\u0010 \u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u0002H§@¢\u0006\u0004\b\"\u0010\bJ%\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\u00050\f2\b\b\u0003\u0010\u0004\u001a\u00020\u0002H'¢\u0006\u0004\b$\u0010\u001f¨\u0006%"}, d2 = {"Lcom/transsion/usercenter/profile/b;", "", "", "userId", "host", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/usercenter/profile/bean/MinePageInfo;", "e", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/usercenter/profile/bean/BffUserProfileData;", "j", "Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/usercenter/profile/bean/ProfileInfo;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "page", "", "perPage", "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;", "c", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;", NativeComponentConstants.KEY_COMPONENT_TYPE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "i", "Lcom/transsion/usercenter/profile/see/bean/ProfileSeeData;", "g", "(Ljava/lang/String;IIILjava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;", "h", "(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "postId", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "a", "Lcom/transsion/usercenter/profile/bean/ProfileEntranceInfo;", "f", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface b {

    public static final class a {
        public static /* synthetic */ io.reactivex.rxjava3.core.j a(b bVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: checkNewMessage");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return bVar.h(str);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j b(b bVar, String str, String str2, int i11, String str3, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLikeSubject");
            }
            if ((i12 & 8) != 0) {
                str3 = vg.a.f77324a.a();
            }
            return bVar.c(str, str2, i11, str3);
        }

        public static /* synthetic */ Object c(b bVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMineInfo");
            }
            if ((i11 & 1) != 0) {
                str = null;
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return bVar.e(str, str2, continuation);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j d(b bVar, String str, String str2, int i11, String str3, String str4, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMyPostSubject");
            }
            if ((i12 & 8) != 0) {
                str3 = "PostRankTypeNew";
            }
            String str5 = str3;
            if ((i12 & 16) != 0) {
                str4 = vg.a.f77324a.a();
            }
            return bVar.i(str, str2, i11, str5, str4);
        }

        public static /* synthetic */ Object e(b bVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPostDetail");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return bVar.a(str, str2, continuation);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j f(b bVar, String str, String str2, int i11, String str3, String str4, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPostSubject");
            }
            if ((i12 & 8) != 0) {
                str3 = "PostRankTypeNew";
            }
            String str5 = str3;
            if ((i12 & 16) != 0) {
                str4 = vg.a.f77324a.a();
            }
            return bVar.d(str, str2, i11, str5, str4);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j g(b bVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getProfileEntrance");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return bVar.f(str);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j h(b bVar, String str, String str2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getProfileInfo");
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return bVar.b(str, str2);
        }

        public static /* synthetic */ io.reactivex.rxjava3.core.j i(b bVar, String str, int i11, int i12, int i13, String str2, int i14, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getSeeList");
            }
            if ((i14 & 8) != 0) {
                i13 = 1;
            }
            int i15 = i13;
            if ((i14 & 16) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return bVar.g(str, i11, i12, i15, str2);
        }

        public static /* synthetic */ Object j(b bVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUGCMineInfo");
            }
            if ((i11 & 1) != 0) {
                str = null;
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return bVar.k(str, str2, continuation);
        }

        public static /* synthetic */ Object k(b bVar, String str, String str2, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getUserProfileV3");
            }
            if ((i11 & 1) != 0) {
                str = null;
            }
            if ((i11 & 2) != 0) {
                str2 = vg.a.f77324a.a();
            }
            return bVar.j(str, str2, continuation);
        }
    }

    @GET("/wefeed-mobile-bff/post/get")
    Object a(@Query("postId") String str, @Query("host") String str2, Continuation<? super BaseDto<PostSubjectItem>> continuation);

    @GET("/wefeed-mobile-bff/user-api/profile")
    io.reactivex.rxjava3.core.j<BaseDto<ProfileInfo>> b(@Query("userId") String userId, @Query("host") String host);

    @GET("/wefeed-mobile-bff/post/list/likes")
    io.reactivex.rxjava3.core.j<BaseDto<PostSubjectBean>> c(@Query("userId") String userId, @Query("page") String page, @Query("perPage") int perPage, @Query("host") String host);

    @GET("/wefeed-mobile-bff/post/list/user")
    io.reactivex.rxjava3.core.j<BaseDto<PostSubjectBean>> d(@Query("id") String userId, @Query("page") String page, @Query("perPage") int perPage, @Query(NativeComponentConstants.KEY_COMPONENT_TYPE) String type, @Query("host") String host);

    @GET("/wefeed-mobile-bff/user-api/profile/v2")
    Object e(@Query("userId") String str, @Query("host") String str2, Continuation<? super BaseDto<MinePageInfo>> continuation);

    @GET("/wefeed-mobile-bff/activity/entrance")
    io.reactivex.rxjava3.core.j<BaseDto<ProfileEntranceInfo>> f(@Query("host") String host);

    @GET("/wefeed-mobile-bff/subject-api/see-list-v2")
    io.reactivex.rxjava3.core.j<BaseDto<ProfileSeeData>> g(@Query("userId") String userId, @Query("page") int page, @Query("perPage") int perPage, @Query("seeType") int type, @Query("host") String host);

    @GET("/wefeed-mobile-bff/message/internal/has-new")
    io.reactivex.rxjava3.core.j<BaseDto<ProfileNewMessage>> h(@Query("host") String host);

    @GET("/wefeed-mobile-bff/post/list/user/my")
    io.reactivex.rxjava3.core.j<BaseDto<PostSubjectBean>> i(@Query("id") String userId, @Query("page") String page, @Query("perPage") int perPage, @Query(NativeComponentConstants.KEY_COMPONENT_TYPE) String type, @Query("host") String host);

    @GET("/wefeed-mobile-bff/user-api/profile/v3")
    Object j(@Query("userId") String str, @Query("host") String str2, Continuation<? super BaseDto<BffUserProfileData>> continuation);

    @GET("/wefeed-mobile-bff/user-api/profile/v3")
    Object k(@Query("userId") String str, @Query("host") String str2, Continuation<? super BaseDto<MinePageInfo>> continuation);
}
