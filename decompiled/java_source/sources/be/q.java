package be;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.Network;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.mediation.R$string;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.handler.DispatcherHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class q {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final be.b f16432o = new be.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Handler f16434b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f16441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Integer f16442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CloudControlConfig.CodeSeat f16443k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f16444l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public i f16445m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AdCache f16446n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public QueryPriceListener f16433a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f16435c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicInteger f16436d = new AtomicInteger();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f16437e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f16438f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List f16439g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f16440h = new ArrayList();

    public class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f16447a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Looper looper, boolean z10) {
            super(looper);
            this.f16447a = z10;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 101) {
                return;
            }
            AdLogUtil.Log().d("QueryPriceCenter", "receive MSG_QUERY_TIME_OUT message");
            if (this.f16447a) {
                q.this.j(true);
            } else {
                q.this.k(true, null);
            }
        }
    }

    public class b implements QueryPriceListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Network f16449a;

        public b(Network network) {
            this.f16449a = network;
        }

        @Override // com.hisavana.common.interfacz.QueryPriceListener
        public void onQueryPriceFailed() {
            q.this.f16436d.decrementAndGet();
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(ComConstants.transferSourceToStr(this.f16449a.getSource().intValue()) + " query price failed; ", RecordTestInfo.LOG_CODE9);
            }
            if (q.this.f16441i) {
                q.this.j(false);
            } else {
                q.this.k(false, null);
            }
        }

        @Override // com.hisavana.common.interfacz.QueryPriceListener
        public void onQueryPriceSuccess(List list) {
            Network network;
            q.this.f16436d.decrementAndGet();
            if (list == null || list.size() <= 0 || list.get(0) == null || (network = (Network) list.get(0)) == null) {
                return;
            }
            AdLogUtil.Log().d("QueryPriceCenter", "receive query price result: " + list.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(ComConstants.transferSourceToStr(network.getSource().intValue()) + " price" + network.getPrice() + ";", RecordTestInfo.LOG_CODE9);
            }
            if (!q.f16432o.b(network.getCodeSeatId(), network)) {
                AdLogUtil.Log().w("QueryPriceCenter", "add price to price pool failed");
                q.this.h(network, false);
            } else if (q.this.f16441i) {
                q.this.j(false);
            } else {
                q.this.k(false, network.getCodeSeatId());
            }
        }
    }

    public q(i iVar, CloudControlConfig.CodeSeat codeSeat, boolean z10) {
        this.f16441i = false;
        if (codeSeat == null) {
            return;
        }
        this.f16443k = codeSeat;
        this.f16442j = codeSeat.getCodeSeatType();
        this.f16444l = codeSeat.getCodeSeatId();
        this.f16441i = z10;
        this.f16445m = iVar;
        this.f16446n = AdCacheManager.getCache(this.f16442j.intValue());
        this.f16434b = new a(Looper.getMainLooper(), z10);
    }

    public final BaseQueryPrice b(Network network) {
        if (network == null) {
            return null;
        }
        IBaseAdSummary iBaseAdSummaryF = o.a().f(network.getSource().intValue());
        BaseQueryPrice queryPrice = iBaseAdSummaryF != null ? iBaseAdSummaryF.getQueryPrice() : null;
        if (queryPrice != null && this.f16442j.intValue() == 4) {
            queryPrice.setOrientation(this.f16445m.F());
        }
        return queryPrice;
    }

    public final Network c(String str) {
        AdCache adCache = this.f16446n;
        double maxPrice = adCache == null ? 0.0d : adCache.getMaxPrice(str, this.f16445m.J());
        AdLogUtil.Log().d("QueryPriceCenter", "*----> currently max price ad in ad pool is: " + maxPrice);
        Network networkA = f16432o.a(str);
        if (networkA == null) {
            return null;
        }
        AdLogUtil.Log().d("QueryPriceCenter", "*----> get cached, code seat id: +" + networkA.getCodeSeatId() + " price: " + networkA.getPrice());
        if (networkA.getPrice().doubleValue() < maxPrice) {
            return null;
        }
        AdLogUtil.Log().d("QueryPriceCenter", "*----> getQueryPriceWinner --> winner network is: " + networkA);
        return networkA;
    }

    public List d(QueryPriceListener queryPriceListener) {
        BaseQueryPrice baseQueryPriceB;
        this.f16433a = queryPriceListener;
        if (this.f16437e.isEmpty()) {
            AdLogUtil.Log().d("QueryPriceCenter", "Auciton failed due to query price list is empty");
            QueryPriceListener queryPriceListener2 = this.f16433a;
            if (queryPriceListener2 != null) {
                queryPriceListener2.onQueryPriceFailed();
            }
            return null;
        }
        int i11 = 0;
        for (Network network : this.f16437e) {
            if (network != null && (baseQueryPriceB = b(network)) != null) {
                baseQueryPriceB.setQueryPriceListener(new b(network));
                if (i11 >= 5) {
                    AdLogUtil.Log().d("QueryPriceCenter", "Auciton count exceed the max thrshold: 5");
                    break;
                }
                AdLogUtil.Log().w("QueryPriceCenter", "*----> start query price,network id: " + network.getCodeSeatId());
                network.setAdt(this.f16442j.intValue());
                baseQueryPriceB.setTrackingBundle(DispatcherHandler.a(this.f16445m, network, this.f16441i ? 2 : 1, this.f16443k));
                if (this.f16442j.intValue() == 2) {
                    baseQueryPriceB.setBannerSize(this.f16445m.r());
                }
                RecordTestInfo.record("queryPrice,codeSeatId:" + network.getCodeSeatId());
                this.f16436d.addAndGet(1);
                baseQueryPriceB.queryPrice(com.cloud.sdk.commonutil.util.e.a(), network);
                if (this.f16435c == null) {
                    this.f16435c = new ArrayList();
                }
                this.f16435c.add(baseQueryPriceB);
                i11++;
            }
        }
        AdLogUtil.Log().d("QueryPriceCenter", "QueryPriceCenter --> startQueryPrice --> mDoingQueryCount.get() = " + this.f16436d.get());
        this.f16434b.removeMessages(101);
        this.f16434b.sendEmptyMessageDelayed(101, 2000L);
        return null;
    }

    public void h(Network network, boolean z10) {
        if (network == null || network.getBidInfo() == null) {
            return;
        }
        if (z10) {
            AdLogUtil.Log().d("QueryPriceCenter", "send auction success to network server!");
            network.getBidInfo().notifyWin();
        } else {
            AdLogUtil.Log().d("QueryPriceCenter", "send auction failed to network server!");
            network.getBidInfo().notifyLoss();
        }
    }

    public final void i(List list) {
        ArrayList caches;
        Network networkA;
        if (LogSwitch.isDebug) {
            StringBuilder sb2 = new StringBuilder();
            for (Network network : this.f16437e) {
                if (network != null) {
                    sb2.append(ComConstants.transferSourceToStr(network.getSource().intValue()) + "，");
                }
            }
            StringBuilder sb3 = new StringBuilder();
            for (Network network2 : this.f16438f) {
                if (network2 != null) {
                    sb3.append(ComConstants.transferSourceToStr(network2.getSource().intValue()) + " -$ " + network2.getPrice() + "，");
                }
            }
            StringBuilder sb4 = new StringBuilder();
            for (Network network3 : this.f16439g) {
                if (network3 != null) {
                    sb4.append(ComConstants.transferSourceToStr(network3.getSource().intValue()) + " -$ " + network3.getPrice() + "，");
                }
            }
            AdLogUtil.Log().d("QueryPriceCenter", "*----> mQueryPriceNetworkList is: " + ((Object) sb2) + ",\n *----> mWaterfallNetworkList is: " + ((Object) sb3) + ",\n mHistroyPriceList is: " + ((Object) sb4));
            String str = String.format(com.cloud.sdk.commonutil.util.e.a().getString(R$string.hisavana_log_msg2), sb3.toString(), sb2.toString(), sb4.toString());
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(str, RecordTestInfo.LOG_CODE2);
            }
            StringBuilder sb5 = new StringBuilder();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Network network4 = (Network) it.next();
                if (network4 != null && AdUtil.isQueryPriceNetwork(network4) && (networkA = f16432o.a(network4.getCodeSeatId())) != null) {
                    sb5.append(ComConstants.transferSourceToStr(network4.getSource().intValue()));
                    sb5.append(" price:");
                    sb5.append(networkA.getPrice());
                }
            }
            if (LogSwitch.isDebug) {
                RecordTestInfo.LogMsg(sb5.toString(), RecordTestInfo.LOG_CODE3);
            }
            AdCache adCache = this.f16446n;
            if (adCache == null) {
                caches = null;
            } else {
                String str2 = this.f16444l;
                i iVar = this.f16445m;
                caches = adCache.getCaches(str2, Integer.MAX_VALUE, false, iVar != null && iVar.J());
            }
            if (!LogSwitch.isDebug || caches == null || caches.isEmpty()) {
                return;
            }
            RecordTestInfo.LogMsg(RecordTestInfo.getLogMsg(caches), RecordTestInfo.LOG_CODE4);
        }
    }

    public final void j(boolean z10) {
        Network networkC;
        AdLogUtil.Log().e("QueryPriceCenter", "checkToGetWinnerPreload --> 竞价超时时间内 是否还有正在竞价的任务 --> mDoingQueryCount.get() = " + this.f16436d.get() + " ----- timeOut = " + z10 + "----- ispreload = " + this.f16441i);
        if (this.f16433a == null) {
            return;
        }
        if (z10 || this.f16436d.get() <= 0) {
            ArrayList arrayList = new ArrayList();
            for (Network network : this.f16437e) {
                if (network != null && (networkC = c(network.getCodeSeatId())) != null) {
                    AdLogUtil.Log().w("QueryPriceCenter", "*---->checkToGetWinnerPreload ----- winnerNetwork = " + networkC);
                    arrayList.add(networkC);
                }
            }
            AdLogUtil.Log().w("QueryPriceCenter", "*---->end query price,checkToGetWinnerPreload ----- winnerList.size() = " + arrayList.size());
            if (arrayList.isEmpty()) {
                this.f16433a.onQueryPriceFailed();
            } else {
                this.f16433a.onQueryPriceSuccess(arrayList);
            }
            this.f16433a = null;
            this.f16434b.removeMessages(101);
        }
    }

    public final void k(boolean z10, String str) {
        AdLogUtil.Log().e("QueryPriceCenter", "checkToGetWinner --> 竞价超时时间内 是否还有正在竞价的任务 --> mDoingQueryCount.get() = " + this.f16436d.get() + " ----- timeOut = " + z10 + "----- ispreload = " + this.f16441i + "，codeSeatId：" + str);
        if (z10) {
            this.f16433a = null;
        }
        if (this.f16433a == null || TextUtils.isEmpty(str)) {
            return;
        }
        Network networkC = c(str);
        AdLogUtil.Log().w("QueryPriceCenter", "*---->end query price,checkToGetWinner ----- winnerNetworks = " + networkC);
        if (networkC != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(networkC);
            this.f16433a.onQueryPriceSuccess(arrayList);
        } else {
            this.f16433a.onQueryPriceFailed();
        }
        if (this.f16436d.get() <= 0) {
            this.f16434b.removeMessages(101);
        }
    }

    public void l() {
        this.f16437e.clear();
        this.f16438f.clear();
        this.f16439g.clear();
        this.f16440h.clear();
        List<Network> networks = this.f16443k.getNetworks();
        if (networks == null) {
            return;
        }
        for (Network network : networks) {
            if (network != null) {
                network.setAdt(this.f16442j.intValue());
                int networkType = AdUtil.getNetworkType(network);
                if (networkType == 1) {
                    this.f16440h.add(network);
                } else if (networkType == 2) {
                    this.f16438f.add(network);
                } else if (networkType == 3) {
                    if (this.f16441i) {
                        this.f16437e.add(network);
                    } else {
                        Network networkC = c(network.getCodeSeatId());
                        if (networkC == null) {
                            if (network.getSource().intValue() == 9) {
                                this.f16446n.removeCodeSeatCache(network.getCodeSeatId());
                            }
                            this.f16437e.add(network);
                        } else {
                            this.f16439g.add(networkC);
                        }
                    }
                }
            }
        }
        i(networks);
    }

    public void n() {
        this.f16433a = null;
        Handler handler = this.f16434b;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        List list = this.f16435c;
        if (list != null && list.size() > 0) {
            for (BaseQueryPrice baseQueryPrice : this.f16435c) {
                if (baseQueryPrice != null) {
                    baseQueryPrice.destroy();
                }
            }
        }
        this.f16435c = null;
    }

    public List o() {
        return this.f16440h;
    }

    public List p() {
        AdLogUtil.Log().d("QueryPriceCenter", "*----> getHistoryPriceList  " + this.f16439g);
        return this.f16439g;
    }

    public List q() {
        return this.f16437e;
    }

    public List r() {
        return this.f16438f;
    }
}
