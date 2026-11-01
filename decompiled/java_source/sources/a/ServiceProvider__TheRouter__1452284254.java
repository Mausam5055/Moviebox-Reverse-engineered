package a;

import android.content.Context;
import androidx.annotation.Keep;
import com.therouter.inject.b;
import com.transsion.commercialization.gameres.c;
import com.transsion.commercialization.pslink.e;
import com.transsion.commercialization.task.q;
import com.transsion.commercializationapi.ICommonDialogApi;
import com.transsion.commercializationapi.IGameResApi;
import com.transsion.commercializationapi.IInterceptReportApi;
import com.transsion.commercializationapi.IPsLinkApi;
import com.transsion.commercializationapi.ITaskCenterApi;
import lk.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class ServiceProvider__TheRouter__1452284254 implements b {
    public static final String FLOW_TASK_JSON = "{}";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addFlowTask(Context context, yf.b bVar) {
    }

    @Override // com.therouter.inject.b
    public void initFlowTask(Context context, yf.b bVar) {
        addFlowTask(context, bVar);
    }

    @Override // com.therouter.inject.b
    public <T> T interception(Class<T> cls, Object... objArr) {
        if (ICommonDialogApi.class.equals(cls) && objArr.length == 0) {
            return (T) d.a();
        }
        if (IGameResApi.class.equals(cls) && objArr.length == 0) {
            return (T) c.a();
        }
        if (IInterceptReportApi.class.equals(cls) && objArr.length == 0) {
            return (T) jk.c.a();
        }
        if (IPsLinkApi.class.equals(cls) && objArr.length == 0) {
            return (T) e.a();
        }
        if (ITaskCenterApi.class.equals(cls) && objArr.length == 0) {
            return (T) q.a();
        }
        return null;
    }
}
