package pe;

import com.iab.omid.library.mmadbridge.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e extends a {
    public e(b.InterfaceC0883b interfaceC0883b, HashSet hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0883b, hashSet, jSONObject, j11);
    }

    private void e(String str) {
        com.iab.omid.library.mmadbridge.internal.c cVarE = com.iab.omid.library.mmadbridge.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f72437c.contains(hVar.s())) {
                    hVar.t().j(str, this.f72439e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // pe.b, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(String str) {
        e(str);
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        return this.f72438d.toString();
    }
}
