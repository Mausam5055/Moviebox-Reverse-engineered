package a;

import android.content.Context;
import androidx.annotation.Keep;
import com.therouter.inject.b;
import com.transsion.baselib.net.g;
import com.transsion.push.api.IPushProvider;
import com.transsion.subroom.ui.AppLifeStatusUIImpl;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class ServiceProvider__TheRouter__206886985 implements b {
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
        if (g.class.equals(cls) && objArr.length == 0) {
            return (T) new AppLifeStatusUIImpl();
        }
        if (IPushProvider.class.equals(cls) && objArr.length == 0) {
            return (T) cu.b.a();
        }
        return null;
    }
}
