package com.transsion.edcation;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.edcation.bean.CourseBody;
import com.transsion.edcation.bean.CourseListResp;
import com.transsion.edcation.bean.EducationInterestResp;
import com.transsion.edcation.bean.InterestBody;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J%\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\tH§@¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\n\u001a\u00020\rH'¢\u0006\u0004\b\u000e\u0010\u000fJ9\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00050\u00042\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0001\u0010\u0010\u001a\u00020\u00022\b\b\u0003\u0010\u0012\u001a\u00020\u0011H'¢\u0006\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/transsion/edcation/c;", "", "", "host", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/edcation/bean/EducationInterestResp;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "Lcom/transsion/edcation/bean/InterestBody;", "request", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;Lcom/transsion/edcation/bean/InterestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/transsion/edcation/bean/CourseBody;", "c", "(Ljava/lang/String;Lcom/transsion/edcation/bean/CourseBody;)Lio/reactivex/rxjava3/core/j;", "page", "", "perPage", "Lcom/transsion/edcation/bean/CourseListResp;", "a", "(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/rxjava3/core/j;", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface c {

    public static final class a {
        public static /* synthetic */ j a(c cVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getInterestList");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return cVar.b(str);
        }

        public static /* synthetic */ j b(c cVar, String str, String str2, int i11, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMyCourse");
            }
            if ((i12 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            if ((i12 & 4) != 0) {
                i11 = 20;
            }
            return cVar.a(str, str2, i11);
        }

        public static /* synthetic */ Object c(c cVar, String str, InterestBody interestBody, Continuation continuation, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: postInterest");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return cVar.d(str, interestBody, continuation);
        }

        public static /* synthetic */ j d(c cVar, String str, CourseBody courseBody, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateCourse");
            }
            if ((i11 & 1) != 0) {
                str = vg.a.f77324a.a();
            }
            return cVar.c(str, courseBody);
        }
    }

    @GET("/wefeed-mobile-bff/learning/my-course")
    j<BaseDto<CourseListResp>> a(@Query("host") String host, @Query("page") String page, @Query("perPage") int perPage);

    @GET("/wefeed-mobile-bff/learning/prefer-options")
    j<BaseDto<EducationInterestResp>> b(@Query("host") String host);

    @POST("/wefeed-mobile-bff/learning/add-course")
    j<BaseDto<String>> c(@Query("host") String host, @Body CourseBody request);

    @POST("/wefeed-mobile-bff/learning/submit-prefer")
    Object d(@Query("host") String str, @Body InterestBody interestBody, Continuation<? super BaseDto<String>> continuation);
}
