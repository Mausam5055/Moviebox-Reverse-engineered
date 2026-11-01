package v6;

import android.util.Log;
import com.cloud.hisavana.abtestkit.bean.ABLayerInfo;
import com.cloud.hisavana.abtestkit.bean.OnlineABLayerDTO;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class j extends StringCallback {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f77060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ RequestParams f77061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f77062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ i.a f77063f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(String str, RequestParams requestParams, long j11, i.a aVar) {
        super(true);
        this.f77060c = str;
        this.f77061d = requestParams;
        this.f77062e = j11;
        this.f77063f = aVar;
    }

    @Override // com.cloud.hisavana.net.impl.StringCallback
    public final void x(int i11, String str, Throwable th2) {
        if (Log.isLoggable("ADSDK", 3)) {
            String str2 = "----- onFailure full url = " + this.f77060c + " \n----- postBodyString = " + this.f77061d.getPostBody() + '}';
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", str2 + " \n ----- status code =  " + i11 + "\n ----- response = " + str);
        }
        k.f77064a.remove(Long.valueOf(this.f77062e));
        this.f77063f.a(this.f77062e, i11);
    }

    @Override // com.cloud.hisavana.net.impl.StringCallback
    public final void y(int i11, String str) {
        ABLayerInfo aBLayerInfo;
        if (Log.isLoggable("ADSDK", 3)) {
            String str2 = "----- onSuccess full url = " + this.f77060c + " \n----- postBodyString = " + this.f77061d.getPostBody() + '}';
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", str2 + " \n ----- status code =  " + i11 + "\n ----- response = " + str);
        }
        k.f77064a.remove(Long.valueOf(this.f77062e));
        long j11 = this.f77062e;
        i.a aVar = this.f77063f;
        if (i11 != 200) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "response fail, statusCode = " + i11);
            aVar.a(j11, i11);
            return;
        }
        if (str == null || str.length() == 0) {
            com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "response success, response is null");
            OnlineABLayerDTO onlineABLayerDTO = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO.setLayerId(j11);
            onlineABLayerDTO.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO.setInfo("{}");
            onlineABLayerDTO.setAbLayerInfo(null);
            e.e(onlineABLayerDTO);
            return;
        }
        try {
            aBLayerInfo = (ABLayerInfo) GsonUtil.a(str, ABLayerInfo.class);
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().w("ABTEST", "response fail, error = " + e11.getMessage());
            aVar.a(j11, 10001);
            aBLayerInfo = null;
        }
        if (aBLayerInfo != null) {
            Long layerId = aBLayerInfo.getLayerId();
            if (layerId == null || j11 != layerId.longValue()) {
                com.cloud.sdk.commonutil.util.c.Log().d("ABTEST", "response fail, layerId is diff, layerId = " + aBLayerInfo.getLayerId());
                aVar.a(j11, 10002);
                return;
            }
            CopyOnWriteArrayList copyOnWriteArrayList = k.f77064a;
            long jLongValue = aBLayerInfo.getLayerId().longValue();
            OnlineABLayerDTO onlineABLayerDTO2 = new OnlineABLayerDTO(null, 1, null);
            onlineABLayerDTO2.setLayerId(jLongValue);
            onlineABLayerDTO2.setRequestTime(System.currentTimeMillis());
            onlineABLayerDTO2.setInfo(str);
            onlineABLayerDTO2.setAbLayerInfo(aBLayerInfo);
            e.e(onlineABLayerDTO2);
        }
    }
}
