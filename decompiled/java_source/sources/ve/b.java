package ve;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f77273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final InterfaceC0947b f77274b;

    public interface a {
        void a(b bVar);
    }

    /* JADX INFO: renamed from: ve.b$b, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes4.dex */
    public interface InterfaceC0947b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0947b interfaceC0947b) {
        this.f77274b = interfaceC0947b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        a aVar = this.f77273a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void b(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    public void c(a aVar) {
        this.f77273a = aVar;
    }
}
