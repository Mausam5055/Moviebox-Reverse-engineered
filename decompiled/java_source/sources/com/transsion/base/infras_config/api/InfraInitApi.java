package com.transsion.base.infras_config.api;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.base.infras_config.model.ConfigInitData;
import com.transsion.base.infras_config.model.ConfigInitMobileInfraReq;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import io.reactivex.rxjava3.core.j;
import kotlin.Metadata;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bJ1\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\n\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0001\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/transsion/base/infras_config/api/InfraInitApi;", "", "", "url", "Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;", TtmlNode.TAG_BODY, "Lio/reactivex/rxjava3/core/j;", "Lcom/tn/lib/net/bean/BaseDto;", "Lcom/transsion/base/infras_config/model/ConfigInitData;", "initMobileInfra", "(Ljava/lang/String;Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;)Lio/reactivex/rxjava3/core/j;", "Companion", "base_infras_config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface InfraInitApi {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String INIT_PATH = "/infras-mobile-bff/v1/init";
    public static final String RELEASE_HOST = "https://i-api.aoneroom.com";
    public static final String TEST_HOST = "https://i-api-test.aoneroom.com";

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;", "", "<init>", "()V", "INIT_PATH", "", "TEST_HOST", "RELEASE_HOST", "base_infras_config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String INIT_PATH = "/infras-mobile-bff/v1/init";
        public static final String RELEASE_HOST = "https://i-api.aoneroom.com";
        public static final String TEST_HOST = "https://i-api-test.aoneroom.com";

        private Companion() {
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static /* synthetic */ j initMobileInfra$default(InfraInitApi infraInitApi, String str, ConfigInitMobileInfraReq configInitMobileInfraReq, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initMobileInfra");
            }
            if ((i11 & 1) != 0) {
                str = "https://i-api.aoneroom.com";
            }
            return infraInitApi.initMobileInfra(str, configInitMobileInfraReq);
        }
    }

    @POST("/infras-mobile-bff/v1/init")
    j<BaseDto<ConfigInitData>> initMobileInfra(@Header("multiple_base_url") String url, @Body ConfigInitMobileInfraReq body);
}
