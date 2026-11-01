package je;

import com.iab.omid.library.hisavana.adsession.h;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e extends a {
    public e(b.InterfaceC0800b interfaceC0800b, HashSet hashSet, JSONObject jSONObject, long j11) {
        super(interfaceC0800b, hashSet, jSONObject, j11);
    }

    private void e(String str) {
        com.iab.omid.library.hisavana.internal.c cVarE = com.iab.omid.library.hisavana.internal.c.e();
        if (cVarE != null) {
            for (h hVar : cVarE.c()) {
                if (this.f65999c.contains(hVar.k())) {
                    hVar.l().h(str, this.f66001e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // je.b, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(String str) {
        e(str);
        super.onPostExecute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        return this.f66000d.toString();
    }
}
