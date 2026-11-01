package fp;

import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.api.AudioEntity;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.api.LinkEntity;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.api.VsMediaInfo;
import com.transsion.room.api.bean.LocationPlace;
import java.util.List;
import jn.e;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Integer f62445a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f62446b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List f62447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioEntity f62448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private VsMediaInfo f62449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private LinkEntity f62450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PhotoEntity f62451g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Subject f62452h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private GroupBean f62453i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private LocationPlace f62454j;

    public final AudioEntity a() {
        return this.f62448d;
    }

    public final PhotoEntity b() {
        return this.f62451g;
    }

    public final GroupBean c() {
        return this.f62453i;
    }

    public final Integer d() {
        return this.f62446b;
    }

    public final Integer e() {
        return this.f62445a;
    }

    public final LinkEntity f() {
        return this.f62450f;
    }

    public final LocationPlace g() {
        return this.f62454j;
    }

    public final List h() {
        return this.f62447c;
    }

    public final Subject i() {
        return this.f62452h;
    }

    public final VsMediaInfo j() {
        return this.f62449e;
    }

    public final void k(AudioEntity audioEntity) {
        this.f62448d = audioEntity;
    }

    public final void l(PhotoEntity photoEntity) {
        this.f62451g = photoEntity;
    }

    public final void m(GroupBean groupBean) {
        this.f62453i = groupBean;
    }

    public final void n(Integer num) {
        this.f62446b = num;
    }

    public final void o(Integer num) {
        this.f62445a = num;
    }

    public final void p(LinkEntity linkEntity) {
        this.f62450f = linkEntity;
    }

    public final void q(LocationPlace locationPlace) {
        this.f62454j = locationPlace;
    }

    public final void r(List list) {
        this.f62447c = list;
    }

    public final void s(Subject subject) {
        this.f62452h = subject;
    }

    public final a t(String str, Integer num, String str2, String str3, String str4) {
        this.f62452h = new Subject(str, num, str2, null, new Cover(null, null, null, str3, null, str4, null, null, null, 471, null), null, null, null, null, e.f66245a.g(num), null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, null, -536, 134217727, null);
        return this;
    }

    public final void u(VsMediaInfo vsMediaInfo) {
        this.f62449e = vsMediaInfo;
    }
}
