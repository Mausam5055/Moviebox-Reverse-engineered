package a;

import android.content.Context;
import androidx.annotation.Keep;
import com.therouter.inject.b;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import zi.d;

/* JADX INFO: loaded from: classes.dex */
@Keep
public class ServiceProvider__TheRouter__1471326562 implements b {
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
        if (IAudioApi.class.equals(cls) && objArr.length == 0) {
            return (T) zi.b.a();
        }
        if (IFloatingApi.class.equals(cls) && objArr.length == 0) {
            return (T) d.a();
        }
        return null;
    }
}
