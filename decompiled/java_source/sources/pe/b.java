package pe;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b extends AsyncTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f72440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final InterfaceC0883b f72441b;

    public interface a {
        void a(b bVar);
    }

    /* JADX INFO: renamed from: pe.b$b, reason: collision with other inner class name */
    /* JADX INFO: loaded from: classes4.dex */
    public interface InterfaceC0883b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0883b interfaceC0883b) {
        this.f72441b = interfaceC0883b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(String str) {
        a aVar = this.f72440a;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void b(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    public void c(a aVar) {
        this.f72440a = aVar;
    }
}
