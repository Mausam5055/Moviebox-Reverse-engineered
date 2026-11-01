package ql;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.SubOperateData;
import com.transsion.home.tv.bean.CountryDataBean;
import com.transsion.home.tv.bean.TvChannelItem;
import com.transsion.home.tv.bean.TvChannelListDataBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H'¢\u0006\u0004\b\u0005\u0010\u0006J9\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00030\u00022\b\b\u0001\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\n\u001a\u00020\t2\b\b\u0001\u0010\u000b\u001a\u00020\u0007H'¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u00030\u00022\b\b\u0001\u0010\u000f\u001a\u00020\u0007H'¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00030\u00022\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0007H'¢\u0006\u0004\b\u0015\u0010\u0012¨\u0006\u0016"}, d2 = {"Lql/a;", "", "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/home/tv/bean/CountryDataBean;", "a", "()Lio/reactivex/rxjava3/core/j;", "", "page", "", "count", "countryCode", "Lcom/transsion/home/tv/bean/TvChannelListDataBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;", TmcStartParams.KEY_CHANNEL_ID, "Lcom/transsion/home/tv/bean/TvChannelItem;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;", "countryIsoCode", "Lcom/transsion/home/bean/SubOperateData;", "c", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface a {
    @GET("/wefeed-mobile-bff/live/tv-country-list")
    j<BaseDto<CountryDataBean>> a();

    @GET("/wefeed-mobile-bff/live/tv-channel")
    j<BaseDto<TvChannelItem>> b(@Query(TmcStartParams.KEY_CHANNEL_ID) String channelId);

    @GET("/wefeed-mobile-bff/tv-channel-operating")
    j<BaseDto<SubOperateData>> c(@Query("countryIsoCode") String countryIsoCode);

    @GET("/wefeed-mobile-bff/live/tv-channel-list-by-country")
    j<BaseDto<TvChannelListDataBean>> d(@Query("page") String page, @Query("perPage") int count, @Query("countryCode") String countryCode);
}
