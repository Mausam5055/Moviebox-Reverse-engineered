package pu;

import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.meituan.android.walle.ChannelReader;
import com.transsion.tinker.lib.custom.check.CheckUpdateResponse;
import retrofit2.d;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes7.dex */
public interface a {
    @GET("/{appPath}/app/check-update")
    d<CheckUpdateResponse> a(@Path(FrameworkConstants.GLOBAL_DATA_KEY_APP_PATH) String str, @Query("basePkgMd5") String str2, @Query(ChannelReader.CHANNEL_KEY) String str3);
}
