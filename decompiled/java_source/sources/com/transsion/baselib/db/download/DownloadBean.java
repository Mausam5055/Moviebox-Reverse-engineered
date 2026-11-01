package com.transsion.baselib.db.download;

import ak.g;
import ak.i;
import android.net.Uri;
import android.os.Environment;
import androidx.annotation.Keep;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.c0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.transsion.player.orplayer.f;
import com.transsion.search.bean.HotRankItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import lj.i1;
import lj.m0;
import n6.a;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b#\n\u0002\u0010\u000b\n\u0002\b$\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0003\b¾\u0001\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\bb\b\u0017\u0018\u0000 Ò\u00032\u00020\u00012\u00020\u0002:\u0002Ó\u0003B\u0081\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u0015\u001a\u00020\b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0010\u0012\b\b\u0002\u0010 \u001a\u00020\u0010\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010%\u001a\u00020\b\u0012\b\b\u0002\u0010&\u001a\u00020\u0010\u0012\b\b\u0002\u0010'\u001a\u00020\u0010\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010*\u001a\u00020\b\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010-\u001a\u00020\b\u0012\b\b\u0002\u0010.\u001a\u00020\u0010\u0012\b\b\u0002\u0010/\u001a\u00020\b\u0012\n\b\u0002\u00100\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u00101\u001a\u00020\u0010\u0012\n\b\u0002\u00102\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u00105\u001a\u000204\u0012\b\b\u0002\u00106\u001a\u000204\u0012\b\b\u0002\u00107\u001a\u00020\u0010\u0012\n\b\u0002\u00108\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u00109\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010:\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010;\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010=\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010E\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010F\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010G\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010I\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010K\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010L\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010N\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010P\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010Q\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010S\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010T\u001a\u000204\u0012\n\b\u0002\u0010U\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010V\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\bW\u0010XJ\u001a\u0010[\u001a\u0002042\b\u0010Z\u001a\u0004\u0018\u00010YH\u0096\u0002¢\u0006\u0004\b[\u0010\\J\u000f\u0010]\u001a\u00020\u0010H\u0016¢\u0006\u0004\b]\u0010^J\r\u0010_\u001a\u000204¢\u0006\u0004\b_\u0010`J\u0015\u0010b\u001a\u00020a2\u0006\u0010\u0011\u001a\u000204¢\u0006\u0004\bb\u0010cJ\u0017\u0010e\u001a\u00020\u00032\b\b\u0002\u0010d\u001a\u000204¢\u0006\u0004\be\u0010fJ\u0011\u0010g\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bg\u0010hJ\u0011\u0010i\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bi\u0010hJ\u0011\u0010j\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bj\u0010hJ\u0011\u0010k\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bk\u0010hJ\u0011\u0010l\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bl\u0010hJ\u0011\u0010m\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\bm\u0010nJ\u0011\u0010o\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bo\u0010hJ\u0011\u0010p\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bp\u0010hJ\u0011\u0010q\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\bq\u0010hJ\u0011\u0010r\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\br\u0010hJ\u000f\u0010s\u001a\u00020\u0010H\u0016¢\u0006\u0004\bs\u0010^J\u000f\u0010t\u001a\u000204H\u0016¢\u0006\u0004\bt\u0010`J\u0017\u0010v\u001a\u00020a2\u0006\u0010u\u001a\u000204H\u0016¢\u0006\u0004\bv\u0010cR\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010w\u001a\u0004\bx\u0010h\"\u0004\by\u0010zR$\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010w\u001a\u0004\b{\u0010h\"\u0004\b|\u0010zR$\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010w\u001a\u0004\b}\u0010h\"\u0004\b~\u0010zR%\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b\u0007\u0010w\u001a\u0004\b\u007f\u0010h\"\u0005\b\u0080\u0001\u0010zR(\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\t\u0010\u0081\u0001\u001a\u0005\b\u0082\u0001\u0010n\"\u0006\b\u0083\u0001\u0010\u0084\u0001R&\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\n\u0010w\u001a\u0005\b\u0085\u0001\u0010h\"\u0005\b\u0086\u0001\u0010zR&\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u000b\u0010w\u001a\u0005\b\u0087\u0001\u0010h\"\u0005\b\u0088\u0001\u0010zR&\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\f\u0010w\u001a\u0005\b\u0089\u0001\u0010h\"\u0005\b\u008a\u0001\u0010zR(\u0010\r\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\r\u0010\u0081\u0001\u001a\u0005\b\u008b\u0001\u0010n\"\u0006\b\u008c\u0001\u0010\u0084\u0001R(\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u000e\u0010\u0081\u0001\u001a\u0005\b\u008d\u0001\u0010n\"\u0006\b\u008e\u0001\u0010\u0084\u0001R'\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u000f\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R%\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0011\u0010\u0094\u0001\u001a\u0005\b\u0095\u0001\u0010^\"\u0005\bb\u0010\u0096\u0001R&\u0010\u0012\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0012\u0010\u0094\u0001\u001a\u0005\b\u0097\u0001\u0010^\"\u0006\b\u0098\u0001\u0010\u0096\u0001R&\u0010\u0013\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0013\u0010\u0094\u0001\u001a\u0005\b\u0099\u0001\u0010^\"\u0006\b\u009a\u0001\u0010\u0096\u0001R'\u0010\u0014\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0014\u0010\u008f\u0001\u001a\u0006\b\u009b\u0001\u0010\u0091\u0001\"\u0006\b\u009c\u0001\u0010\u0093\u0001R'\u0010\u0015\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0015\u0010\u008f\u0001\u001a\u0006\b\u009d\u0001\u0010\u0091\u0001\"\u0006\b\u009e\u0001\u0010\u0093\u0001R%\u0010\u0016\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0016\u0010\u0094\u0001\u001a\u0004\b\u0016\u0010^\"\u0006\b\u009f\u0001\u0010\u0096\u0001R&\u0010\u0017\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0005\b\u0017\u0010\u0094\u0001\u001a\u0005\b \u0001\u0010^\"\u0006\b¡\u0001\u0010\u0096\u0001R&\u0010\u0018\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0018\u0010\u0094\u0001\u001a\u0005\b¢\u0001\u0010^\"\u0006\b£\u0001\u0010\u0096\u0001R&\u0010\u0019\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u0019\u0010\u0094\u0001\u001a\u0005\b¤\u0001\u0010^\"\u0006\b¥\u0001\u0010\u0096\u0001R&\u0010\u001a\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u001a\u0010\u0094\u0001\u001a\u0005\b¦\u0001\u0010^\"\u0006\b§\u0001\u0010\u0096\u0001R&\u0010\u001b\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u001b\u0010\u0094\u0001\u001a\u0005\b¨\u0001\u0010^\"\u0006\b©\u0001\u0010\u0096\u0001R&\u0010\u001c\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u001c\u0010\u0094\u0001\u001a\u0005\bª\u0001\u0010^\"\u0006\b«\u0001\u0010\u0096\u0001R&\u0010\u001d\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u001d\u0010\u0094\u0001\u001a\u0005\b¬\u0001\u0010^\"\u0006\b\u00ad\u0001\u0010\u0096\u0001R&\u0010\u001e\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u001e\u0010\u0094\u0001\u001a\u0005\b®\u0001\u0010^\"\u0006\b¯\u0001\u0010\u0096\u0001R&\u0010\u001f\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b\u001f\u0010\u0094\u0001\u001a\u0005\b°\u0001\u0010^\"\u0006\b±\u0001\u0010\u0096\u0001R&\u0010 \u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b \u0010\u0094\u0001\u001a\u0005\b²\u0001\u0010^\"\u0006\b³\u0001\u0010\u0096\u0001R&\u0010!\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b!\u0010w\u001a\u0005\b´\u0001\u0010h\"\u0005\bµ\u0001\u0010zR&\u0010\"\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\"\u0010w\u001a\u0005\b¶\u0001\u0010h\"\u0005\b·\u0001\u0010zR&\u0010#\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b#\u0010w\u001a\u0005\b¸\u0001\u0010h\"\u0005\b¹\u0001\u0010zR&\u0010$\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b$\u0010w\u001a\u0005\bº\u0001\u0010h\"\u0005\b»\u0001\u0010zR'\u0010%\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b%\u0010\u008f\u0001\u001a\u0006\b¼\u0001\u0010\u0091\u0001\"\u0006\b½\u0001\u0010\u0093\u0001R&\u0010&\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b&\u0010\u0094\u0001\u001a\u0005\b¾\u0001\u0010^\"\u0006\b¿\u0001\u0010\u0096\u0001R&\u0010'\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b'\u0010\u0094\u0001\u001a\u0005\bÀ\u0001\u0010^\"\u0006\bÁ\u0001\u0010\u0096\u0001R&\u0010(\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b(\u0010w\u001a\u0005\bÂ\u0001\u0010h\"\u0005\bÃ\u0001\u0010zR&\u0010)\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b)\u0010w\u001a\u0005\bÄ\u0001\u0010h\"\u0005\bÅ\u0001\u0010zR'\u0010*\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b*\u0010\u008f\u0001\u001a\u0006\bÆ\u0001\u0010\u0091\u0001\"\u0006\bÇ\u0001\u0010\u0093\u0001R&\u0010+\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b+\u0010w\u001a\u0005\bÈ\u0001\u0010h\"\u0005\bÉ\u0001\u0010zR&\u0010,\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b,\u0010w\u001a\u0005\bÊ\u0001\u0010h\"\u0005\bË\u0001\u0010zR'\u0010-\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b-\u0010\u008f\u0001\u001a\u0006\bÌ\u0001\u0010\u0091\u0001\"\u0006\bÍ\u0001\u0010\u0093\u0001R&\u0010.\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b.\u0010\u0094\u0001\u001a\u0005\bÎ\u0001\u0010^\"\u0006\bÏ\u0001\u0010\u0096\u0001R'\u0010/\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b/\u0010\u008f\u0001\u001a\u0006\bÐ\u0001\u0010\u0091\u0001\"\u0006\bÑ\u0001\u0010\u0093\u0001R&\u00100\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b0\u0010w\u001a\u0005\bÒ\u0001\u0010h\"\u0005\bÓ\u0001\u0010zR&\u00101\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b1\u0010\u0094\u0001\u001a\u0005\bÔ\u0001\u0010^\"\u0006\bÕ\u0001\u0010\u0096\u0001R&\u00102\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b2\u0010w\u001a\u0005\bÖ\u0001\u0010h\"\u0005\b×\u0001\u0010zR&\u00103\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b3\u0010w\u001a\u0005\bØ\u0001\u0010h\"\u0005\bÙ\u0001\u0010zR$\u00105\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0005\b5\u0010Ú\u0001\u001a\u0004\b5\u0010`\"\u0005\bÛ\u0001\u0010cR$\u00106\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0005\b6\u0010Ú\u0001\u001a\u0004\b6\u0010`\"\u0005\bÜ\u0001\u0010cR&\u00107\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\b7\u0010\u0094\u0001\u001a\u0005\bÝ\u0001\u0010^\"\u0006\bÞ\u0001\u0010\u0096\u0001R&\u00108\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b8\u0010w\u001a\u0005\bß\u0001\u0010h\"\u0005\bà\u0001\u0010zR)\u00109\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b9\u0010á\u0001\u001a\u0006\bâ\u0001\u0010ã\u0001\"\u0006\bä\u0001\u0010å\u0001R&\u0010:\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b:\u0010w\u001a\u0005\bæ\u0001\u0010h\"\u0005\bç\u0001\u0010zR&\u0010;\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b;\u0010w\u001a\u0005\bè\u0001\u0010h\"\u0005\bé\u0001\u0010zR&\u0010<\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b<\u0010w\u001a\u0005\bê\u0001\u0010h\"\u0005\bë\u0001\u0010zR&\u0010=\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b=\u0010w\u001a\u0005\bì\u0001\u0010h\"\u0005\bí\u0001\u0010zR&\u0010>\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b>\u0010w\u001a\u0005\bî\u0001\u0010h\"\u0005\bï\u0001\u0010zR&\u0010?\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b?\u0010w\u001a\u0005\bð\u0001\u0010h\"\u0005\bñ\u0001\u0010zR)\u0010@\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b@\u0010á\u0001\u001a\u0006\bò\u0001\u0010ã\u0001\"\u0006\bó\u0001\u0010å\u0001R&\u0010A\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bA\u0010w\u001a\u0005\bô\u0001\u0010h\"\u0005\bõ\u0001\u0010zR&\u0010B\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bB\u0010w\u001a\u0005\bö\u0001\u0010h\"\u0005\b÷\u0001\u0010zR(\u0010C\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bC\u0010\u0081\u0001\u001a\u0005\bø\u0001\u0010n\"\u0006\bù\u0001\u0010\u0084\u0001R(\u0010D\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0005\bD\u0010\u0081\u0001\u001a\u0005\bú\u0001\u0010n\"\u0006\bû\u0001\u0010\u0084\u0001R&\u0010E\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bE\u0010w\u001a\u0005\bü\u0001\u0010h\"\u0005\bý\u0001\u0010zR&\u0010F\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bF\u0010w\u001a\u0005\bþ\u0001\u0010h\"\u0005\bÿ\u0001\u0010zR&\u0010G\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bG\u0010w\u001a\u0005\b\u0080\u0002\u0010h\"\u0005\b\u0081\u0002\u0010zR&\u0010H\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bH\u0010w\u001a\u0005\b\u0082\u0002\u0010h\"\u0005\b\u0083\u0002\u0010zR&\u0010I\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bI\u0010w\u001a\u0005\b\u0084\u0002\u0010h\"\u0005\b\u0085\u0002\u0010zR)\u0010J\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bJ\u0010á\u0001\u001a\u0006\b\u0086\u0002\u0010ã\u0001\"\u0006\b\u0087\u0002\u0010å\u0001R&\u0010K\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bK\u0010w\u001a\u0005\b\u0088\u0002\u0010h\"\u0005\b\u0089\u0002\u0010zR)\u0010L\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bL\u0010á\u0001\u001a\u0006\b\u008a\u0002\u0010ã\u0001\"\u0006\b\u008b\u0002\u0010å\u0001R)\u0010M\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bM\u0010á\u0001\u001a\u0006\b\u008c\u0002\u0010ã\u0001\"\u0006\b\u008d\u0002\u0010å\u0001R)\u0010N\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bN\u0010á\u0001\u001a\u0006\b\u008e\u0002\u0010ã\u0001\"\u0006\b\u008f\u0002\u0010å\u0001R)\u0010O\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bO\u0010á\u0001\u001a\u0006\b\u0090\u0002\u0010ã\u0001\"\u0006\b\u0091\u0002\u0010å\u0001R&\u0010P\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bP\u0010w\u001a\u0005\b\u0092\u0002\u0010h\"\u0005\b\u0093\u0002\u0010zR&\u0010Q\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bQ\u0010w\u001a\u0005\b\u0094\u0002\u0010h\"\u0005\b\u0095\u0002\u0010zR&\u0010R\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bR\u0010w\u001a\u0005\b\u0096\u0002\u0010h\"\u0005\b\u0097\u0002\u0010zR&\u0010S\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bS\u0010w\u001a\u0005\b\u0098\u0002\u0010h\"\u0005\b\u0099\u0002\u0010zR%\u0010T\u001a\u0002048\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\bT\u0010Ú\u0001\u001a\u0005\b\u009a\u0002\u0010`\"\u0005\b\u009b\u0002\u0010cR&\u0010U\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bU\u0010w\u001a\u0005\b\u009c\u0002\u0010h\"\u0005\b\u009d\u0002\u0010zR&\u0010V\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bV\u0010w\u001a\u0005\b\u009e\u0002\u0010h\"\u0005\b\u009f\u0002\u0010zR,\u0010¡\u0002\u001a\u0005\u0018\u00010 \u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\b¡\u0002\u0010¢\u0002\u001a\u0006\b£\u0002\u0010¤\u0002\"\u0006\b¥\u0002\u0010¦\u0002R,\u0010¨\u0002\u001a\u0005\u0018\u00010§\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\b¨\u0002\u0010©\u0002\u001a\u0006\bª\u0002\u0010«\u0002\"\u0006\b¬\u0002\u0010\u00ad\u0002R1\u0010°\u0002\u001a\n\u0012\u0005\u0012\u00030¯\u00020®\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\b°\u0002\u0010±\u0002\u001a\u0006\b²\u0002\u0010³\u0002\"\u0006\b´\u0002\u0010µ\u0002R,\u0010·\u0002\u001a\u0005\u0018\u00010¶\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\b·\u0002\u0010¸\u0002\u001a\u0006\b¹\u0002\u0010º\u0002\"\u0006\b»\u0002\u0010¼\u0002R'\u0010½\u0002\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b½\u0002\u0010Ú\u0001\u001a\u0005\b½\u0002\u0010`\"\u0005\b¾\u0002\u0010cR(\u0010¿\u0002\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\b¿\u0002\u0010\u0094\u0001\u001a\u0005\bÀ\u0002\u0010^\"\u0006\bÁ\u0002\u0010\u0096\u0001R'\u0010Â\u0002\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\bÂ\u0002\u0010Ú\u0001\u001a\u0005\bÂ\u0002\u0010`\"\u0005\bÃ\u0002\u0010cR(\u0010Ä\u0002\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\bÄ\u0002\u0010\u0094\u0001\u001a\u0005\bÅ\u0002\u0010^\"\u0006\bÆ\u0002\u0010\u0096\u0001R(\u0010Ç\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\bÇ\u0002\u0010w\u001a\u0005\bÈ\u0002\u0010h\"\u0005\bÉ\u0002\u0010zR)\u0010Ê\u0002\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bÊ\u0002\u0010\u008f\u0001\u001a\u0006\bË\u0002\u0010\u0091\u0001\"\u0006\bÌ\u0002\u0010\u0093\u0001R'\u0010Í\u0002\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\bÍ\u0002\u0010Ú\u0001\u001a\u0005\bÍ\u0002\u0010`\"\u0005\bÎ\u0002\u0010cR(\u0010Ï\u0002\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\bÏ\u0002\u0010\u0094\u0001\u001a\u0005\bÐ\u0002\u0010^\"\u0006\bÑ\u0002\u0010\u0096\u0001R,\u0010Ó\u0002\u001a\u0005\u0018\u00010Ò\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bÓ\u0002\u0010Ô\u0002\u001a\u0006\bÕ\u0002\u0010Ö\u0002\"\u0006\b×\u0002\u0010Ø\u0002R(\u0010Ù\u0002\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\bÙ\u0002\u0010\u0094\u0001\u001a\u0005\bÚ\u0002\u0010^\"\u0006\bÛ\u0002\u0010\u0096\u0001R(\u0010Ü\u0002\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\bÜ\u0002\u0010\u0094\u0001\u001a\u0005\bÝ\u0002\u0010^\"\u0006\bÞ\u0002\u0010\u0096\u0001R(\u0010ß\u0002\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\bß\u0002\u0010\u0094\u0001\u001a\u0005\bà\u0002\u0010^\"\u0006\bá\u0002\u0010\u0096\u0001R1\u0010ã\u0002\u001a\n\u0012\u0005\u0012\u00030â\u00020®\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bã\u0002\u0010±\u0002\u001a\u0006\bä\u0002\u0010³\u0002\"\u0006\bå\u0002\u0010µ\u0002R'\u0010æ\u0002\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\bæ\u0002\u0010Ú\u0001\u001a\u0005\bæ\u0002\u0010`\"\u0005\bç\u0002\u0010cR0\u0010è\u0002\u001a\t\u0012\u0004\u0012\u00020\u00000®\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bè\u0002\u0010±\u0002\u001a\u0006\bé\u0002\u0010³\u0002\"\u0006\bê\u0002\u0010µ\u0002R,\u0010ì\u0002\u001a\u0005\u0018\u00010ë\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bì\u0002\u0010í\u0002\u001a\u0006\bî\u0002\u0010ï\u0002\"\u0006\bð\u0002\u0010ñ\u0002R,\u0010ó\u0002\u001a\u0005\u0018\u00010ò\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bó\u0002\u0010ô\u0002\u001a\u0006\bõ\u0002\u0010ö\u0002\"\u0006\b÷\u0002\u0010ø\u0002R$\u0010u\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0005\bu\u0010Ú\u0001\u001a\u0004\bu\u0010`\"\u0005\bù\u0002\u0010cR)\u0010ú\u0002\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bú\u0002\u0010\u008f\u0001\u001a\u0006\bû\u0002\u0010\u0091\u0001\"\u0006\bü\u0002\u0010\u0093\u0001R)\u0010ý\u0002\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\bý\u0002\u0010\u008f\u0001\u001a\u0006\bþ\u0002\u0010\u0091\u0001\"\u0006\bÿ\u0002\u0010\u0093\u0001R'\u0010\u0080\u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b\u0080\u0003\u0010Ú\u0001\u001a\u0005\b\u0081\u0003\u0010`\"\u0005\b\u0082\u0003\u0010cR0\u0010\u0083\u0003\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u001f\n\u0006\b\u0083\u0003\u0010\u0094\u0001\u0012\u0006\b\u0086\u0003\u0010\u0087\u0003\u001a\u0005\b\u0084\u0003\u0010^\"\u0006\b\u0085\u0003\u0010\u0096\u0001R'\u0010\u0088\u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b\u0088\u0003\u0010Ú\u0001\u001a\u0005\b\u0088\u0003\u0010`\"\u0005\b\u0089\u0003\u0010cR'\u0010\u008a\u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b\u008a\u0003\u0010Ú\u0001\u001a\u0005\b\u008a\u0003\u0010`\"\u0005\b\u008b\u0003\u0010cR(\u0010\u008c\u0003\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\b\u008c\u0003\u0010\u0094\u0001\u001a\u0005\b\u008d\u0003\u0010^\"\u0006\b\u008e\u0003\u0010\u0096\u0001R(\u0010\u008f\u0003\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0017\n\u0006\b\u008f\u0003\u0010\u0094\u0001\u001a\u0005\b\u0090\u0003\u0010^\"\u0006\b\u0091\u0003\u0010\u0096\u0001R'\u0010\u0092\u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b\u0092\u0003\u0010Ú\u0001\u001a\u0005\b\u0092\u0003\u0010`\"\u0005\b\u0093\u0003\u0010cR'\u0010\u0094\u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b\u0094\u0003\u0010Ú\u0001\u001a\u0005\b\u0094\u0003\u0010`\"\u0005\b\u0095\u0003\u0010cR+\u0010\u0096\u0003\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0006\b\u0096\u0003\u0010á\u0001\u001a\u0006\b\u0097\u0003\u0010ã\u0001\"\u0006\b\u0098\u0003\u0010å\u0001R'\u0010\u0099\u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b\u0099\u0003\u0010Ú\u0001\u001a\u0005\b\u0099\u0003\u0010`\"\u0005\b\u009a\u0003\u0010cR&\u0010\u009b\u0003\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0015\n\u0005\b\u009b\u0003\u0010w\u001a\u0005\b\u009c\u0003\u0010h\"\u0005\b\u009d\u0003\u0010zR'\u0010\u009e\u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b\u009e\u0003\u0010Ú\u0001\u001a\u0005\b\u009e\u0003\u0010`\"\u0005\b\u009f\u0003\u0010cR'\u0010 \u0003\u001a\u0002048\u0006@\u0006X\u0087\u000e¢\u0006\u0016\n\u0006\b \u0003\u0010Ú\u0001\u001a\u0005\b \u0003\u0010`\"\u0005\b¡\u0003\u0010cR(\u0010¢\u0003\u001a\u00020\u00108\u0016@\u0016X\u0097\u000e¢\u0006\u0017\n\u0006\b¢\u0003\u0010\u0094\u0001\u001a\u0005\b£\u0003\u0010^\"\u0006\b¤\u0003\u0010\u0096\u0001R\u001a\u0010¥\u0003\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0007\n\u0005\b¥\u0003\u0010wR\u001a\u0010¦\u0003\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0007\n\u0005\b¦\u0003\u0010wR\u001a\u0010§\u0003\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0007\n\u0005\b§\u0003\u0010wR\u001a\u0010¨\u0003\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0007\n\u0005\b¨\u0003\u0010wR\u0013\u0010©\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b©\u0003\u0010`R\u0013\u0010ª\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bª\u0003\u0010`R\u0013\u0010«\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b«\u0003\u0010`R\u0013\u0010¬\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b¬\u0003\u0010`R\u0013\u0010\u00ad\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b\u00ad\u0003\u0010`R\u0013\u0010®\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b®\u0003\u0010`R\u0013\u0010¯\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b¯\u0003\u0010`R\u0013\u0010°\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b°\u0003\u0010`R\u0013\u0010±\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b±\u0003\u0010`R\u0013\u0010³\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b²\u0003\u0010`R\u0013\u0010´\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b´\u0003\u0010`R\u0013\u0010µ\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bµ\u0003\u0010`R\u0013\u0010¶\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\b¶\u0003\u0010`R\u0013\u0010¸\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\b·\u0003\u0010hR\u0013\u0010º\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\b¹\u0003\u0010hR\u0013\u0010¼\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\b»\u0003\u0010hR\u0013\u0010¾\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\b½\u0003\u0010hR\u0013\u0010À\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\b¿\u0003\u0010hR\u0013\u0010Â\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\bÁ\u0003\u0010hR\u0013\u0010Ã\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÃ\u0003\u0010`R\u0013\u0010Ä\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÄ\u0003\u0010`R\u0013\u0010Å\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÅ\u0003\u0010`R\u0013\u0010Æ\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÆ\u0003\u0010`R\u0013\u0010Ç\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÇ\u0003\u0010`R\u0013\u0010È\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÈ\u0003\u0010`R\u0013\u0010É\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÉ\u0003\u0010`R\u0013\u0010Ê\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÊ\u0003\u0010`R\u0013\u0010Ë\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bË\u0003\u0010`R\u0013\u0010Ì\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÌ\u0003\u0010`R\u0013\u0010Î\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\bÍ\u0003\u0010hR\u0013\u0010Ð\u0003\u001a\u00020\u00038F¢\u0006\u0007\u001a\u0005\bÏ\u0003\u0010hR\u0013\u0010Ñ\u0003\u001a\u0002048F¢\u0006\u0007\u001a\u0005\bÑ\u0003\u0010`¨\u0006Ô\u0003"}, d2 = {"Lcom/transsion/baselib/db/download/DownloadBean;", "Ln6/a;", "Llj/i1;", "", "url", "resourceId", "name", "cover", "", "size", "postId", "sizeFormat", "path", "duration", "updateTimeStamp", NotificationCompat.CATEGORY_PROGRESS, "", "supportRanges", NotificationCompat.CATEGORY_STATUS, NativeComponentConstants.KEY_COMPONENT_TYPE, "readProgress", "createAt", "isRead", "epse", "ep", "se", "resolution", "resourcePosition", "multiresolution", "videoWidth", "videoHeight", "downloadErrorCount", "subtitleStarted", "subjectId", "pageFrom", "lastPageFrom", "subjectName", "lastPlayTimeStamp", "fileType", "totalEpisode", "uploadBy", "sourceUrl", "urlCreateAt", "subtitleSelectId", "taskId", "sessionTime", "reportStatus", "downloadHeaderSize", "rootPath", "rootPathType", "thumbnail", "averageHueLight", "", "isTransferFailed", "isClosedTransferFailed", "subjectType", "genre", "subjectDurationSeconds", "currentDubLanName", "currentDubLanCode", "ops", "restrictLevel", "releaseDate", "countryName", "seNum", "subtitles", "imdbRate", "lastAdStartTimeStamp", "lastAdEndTimeStamp", "subtitleIdType", "ugcVideoCollectionId", "ugcVideoId", "ugcVideoName", "ugcVideoCollectionName", "ugcVideoPosition", "ugcVideoType", "ugcCateLev1Id", "ugcCateLev2Id", "ugcCateLev3Id", "ugcCateLev4Id", "ugcVideoTrackId", "ugcVideoParentVideoId", "ugcVideoParentTrackId", "ugcVideoEpTitle", "ugcVideoIsVertical", "originData", "kidId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V", "", "o", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "isSupportRanges", "()Z", "", "setSupportRanges", "(Z)V", "showSe", "getEpTitleName", "(Z)Ljava/lang/String;", "videoCoverUrl", "()Ljava/lang/String;", "videoThumbnail", "videoTitle", "videoEpTitle", "videoCorner", "videoDuration", "()Ljava/lang/Long;", "videoResourceId", "videoUGCId", "videoUGCType", "videoUGCWatchNum", "videoUGCPosition", "isVideoPlaying", "isPlaying", "setVideoIsPlaying", "Ljava/lang/String;", "getUrl", "setUrl", "(Ljava/lang/String;)V", "getResourceId", "setResourceId", "getName", "setName", "getCover", "setCover", "Ljava/lang/Long;", "getSize", "setSize", "(Ljava/lang/Long;)V", "getPostId", "setPostId", "getSizeFormat", "setSizeFormat", "getPath", "setPath", "getDuration", "setDuration", "getUpdateTimeStamp", "setUpdateTimeStamp", "J", "getProgress", "()J", "setProgress", "(J)V", "I", "getSupportRanges", "(I)V", "getStatus", "setStatus", "getType", "setType", "getReadProgress", "setReadProgress", "getCreateAt", "setCreateAt", "setRead", "getEpse", "setEpse", "getEp", "setEp", "getSe", "setSe", "getResolution", "setResolution", "getResourcePosition", "setResourcePosition", "getMultiresolution", "setMultiresolution", "getVideoWidth", "setVideoWidth", "getVideoHeight", "setVideoHeight", "getDownloadErrorCount", "setDownloadErrorCount", "getSubtitleStarted", "setSubtitleStarted", "getSubjectId", "setSubjectId", "getPageFrom", "setPageFrom", "getLastPageFrom", "setLastPageFrom", "getSubjectName", "setSubjectName", "getLastPlayTimeStamp", "setLastPlayTimeStamp", "getFileType", "setFileType", "getTotalEpisode", "setTotalEpisode", "getUploadBy", "setUploadBy", "getSourceUrl", "setSourceUrl", "getUrlCreateAt", "setUrlCreateAt", "getSubtitleSelectId", "setSubtitleSelectId", "getTaskId", "setTaskId", "getSessionTime", "setSessionTime", "getReportStatus", "setReportStatus", "getDownloadHeaderSize", "setDownloadHeaderSize", "getRootPath", "setRootPath", "getRootPathType", "setRootPathType", "getThumbnail", "setThumbnail", "getAverageHueLight", "setAverageHueLight", "Z", "setTransferFailed", "setClosedTransferFailed", "getSubjectType", "setSubjectType", "getGenre", "setGenre", "Ljava/lang/Integer;", "getSubjectDurationSeconds", "()Ljava/lang/Integer;", "setSubjectDurationSeconds", "(Ljava/lang/Integer;)V", "getCurrentDubLanName", "setCurrentDubLanName", "getCurrentDubLanCode", "setCurrentDubLanCode", "getOps", "setOps", "getRestrictLevel", "setRestrictLevel", "getReleaseDate", "setReleaseDate", "getCountryName", "setCountryName", "getSeNum", "setSeNum", "getSubtitles", "setSubtitles", "getImdbRate", "setImdbRate", "getLastAdStartTimeStamp", "setLastAdStartTimeStamp", "getLastAdEndTimeStamp", "setLastAdEndTimeStamp", "getSubtitleIdType", "setSubtitleIdType", "getUgcVideoCollectionId", "setUgcVideoCollectionId", "getUgcVideoId", "setUgcVideoId", "getUgcVideoName", "setUgcVideoName", "getUgcVideoCollectionName", "setUgcVideoCollectionName", "getUgcVideoPosition", "setUgcVideoPosition", "getUgcVideoType", "setUgcVideoType", "getUgcCateLev1Id", "setUgcCateLev1Id", "getUgcCateLev2Id", "setUgcCateLev2Id", "getUgcCateLev3Id", "setUgcCateLev3Id", "getUgcCateLev4Id", "setUgcCateLev4Id", "getUgcVideoTrackId", "setUgcVideoTrackId", "getUgcVideoParentVideoId", "setUgcVideoParentVideoId", "getUgcVideoParentTrackId", "setUgcVideoParentTrackId", "getUgcVideoEpTitle", "setUgcVideoEpTitle", "getUgcVideoIsVertical", "setUgcVideoIsVertical", "getOriginData", "setOriginData", "getKidId", "setKidId", "Lcom/transsion/baselib/db/download/VipInfo;", "vipInfo", "Lcom/transsion/baselib/db/download/VipInfo;", "getVipInfo", "()Lcom/transsion/baselib/db/download/VipInfo;", "setVipInfo", "(Lcom/transsion/baselib/db/download/VipInfo;)V", "Llj/m0;", "downloadListener", "Llj/m0;", "getDownloadListener", "()Llj/m0;", "setDownloadListener", "(Llj/m0;)V", "", "Lcom/transsion/baselib/db/download/DownloadRange;", "downloadRanges", "Ljava/util/List;", "getDownloadRanges", "()Ljava/util/List;", "setDownloadRanges", "(Ljava/util/List;)V", "Lcom/transsion/baselib/db/download/DownloadException;", "exception", "Lcom/transsion/baselib/db/download/DownloadException;", "getException", "()Lcom/transsion/baselib/db/download/DownloadException;", "setException", "(Lcom/transsion/baselib/db/download/DownloadException;)V", "isMore", "setMore", "count", "getCount", "setCount", "isCheck", "setCheck", "index", "getIndex", "setIndex", "groupId", "getGroupId", "setGroupId", "lastProgress", "getLastProgress", "setLastProgress", "isStartRequested", "setStartRequested", "audioStatus", "getAudioStatus", "setAudioStatus", "Lcom/transsion/player/orplayer/f;", "audioListener", "Lcom/transsion/player/orplayer/f;", "getAudioListener", "()Lcom/transsion/player/orplayer/f;", "setAudioListener", "(Lcom/transsion/player/orplayer/f;)V", "errorCount", "getErrorCount", "setErrorCount", "restartDownloadCount", "getRestartDownloadCount", "setRestartDownloadCount", "requestNewSourceCount", "getRequestNewSourceCount", "setRequestNewSourceCount", "Lcom/transsion/baselib/db/download/SubtitleBean;", "subtitleList", "getSubtitleList", "setSubtitleList", "isPreDownload", "setPreDownload", "seriesList", "getSeriesList", "setSeriesList", "Lcom/hisavana/common/interfacz/TAdListener;", "adProvide", "Lcom/hisavana/common/interfacz/TAdListener;", "getAdProvide", "()Lcom/hisavana/common/interfacz/TAdListener;", "setAdProvide", "(Lcom/hisavana/common/interfacz/TAdListener;)V", "Lcom/hisavana/common/interfacz/TAdditionalListener;", "wrapNativeManager", "Lcom/hisavana/common/interfacz/TAdditionalListener;", "getWrapNativeManager", "()Lcom/hisavana/common/interfacz/TAdditionalListener;", "setWrapNativeManager", "(Lcom/hisavana/common/interfacz/TAdditionalListener;)V", "setPlaying", "currentOffset", "getCurrentOffset", "setCurrentOffset", "currentDownloadSpeed", "getCurrentDownloadSpeed", "setCurrentDownloadSpeed", "reDownload", "getReDownload", "setReDownload", "preStatus", "getPreStatus", "setPreStatus", "getPreStatus$annotations", "()V", "isDownloadingPlay", "setDownloadingPlay", "isQuitDPRestart", "setQuitDPRestart", "preErrorCode", "getPreErrorCode", "setPreErrorCode", RequestParameters.POSITION, "getPosition", "setPosition", "isStream", "setStream", "isStreamVideoDetail", "setStreamVideoDetail", "requireMemberType", "getRequireMemberType", "setRequireMemberType", "isAutoPause", "setAutoPause", "playingUrl", "getPlayingUrl", "setPlayingUrl", "isSeriesAllCheck", "setSeriesAllCheck", "isFroYouList", "setFroYouList", "itemType", "getItemType", "setItemType", "titleNameLocal", "titleNameReLocal", "epNameLocal", "totalTitleNameLocal", "isUnable", "isSeries", "isSeriesCollection", "isMultiresolution", "isPause", "isVideo", "isCompleted", "isRemoved", "isDownloading", "getCanPlay", "canPlay", "isOutside", "isInnerRes", "isInnerSubjectRes", "getTitleName", "titleName", "getTitleNameAppendResolution", "titleNameAppendResolution", "getEpName", "epName", "getTotalTitleName", "totalTitleName", "getFileName", "fileName", "getPostIdNotNull", "postIdNotNull", "isFileExist", "isAllFileExist", "isSaved", "isCNDError", "is4xxError", "isNoNetError", "isMusic", "isShotTV", "isShorts", "isDownloadInSDCard", "getSubtitleResId", "subtitleResId", "getCreateAtFormat", "createAtFormat", "isUGCVideo", "Companion", "a", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class DownloadBean implements a, i1 {
    public static final int AUDIO = 1;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int DOWNLOAD_ERROR_MAX_COUNT = 15;
    public static final int INNER = 1;
    public static final int MOVIE = 2;
    public static final int OUTSIDE = 2;
    public static final int PATH_TYPE_ALBUM = 3;
    public static final int PATH_TYPE_BM_INNER = 1;
    public static final int PATH_TYPE_SDCARD = 2;
    public static final int POST = 9;
    public static final int READ = 2;
    public static final int SERVER_AUDIO = 4;
    public static final int SERVER_EDUCATION = 5;
    public static final int SERVER_MOVIE = 1;
    public static final int SERVER_MUSIC = 6;
    public static final int SERVER_SHORT_TV = 7;
    public static final int SERVER_TV = 2;
    public static final int SERVER_VSHOW = 3;
    public static final int SHORT_TV = 8;
    public static final int STATUS_AD_ITEM = 13;
    public static final int STATUS_ALL_EP_BTN = 14;
    public static final int STATUS_COMPLETED = 5;
    public static final int STATUS_COMPLETED_REMOVED = 57;
    public static final int STATUS_DOWNLOADING = 2;
    public static final int STATUS_ERROR = 6;
    public static final int STATUS_HIDE_MORE = 12;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_PATH = 15;
    public static final int STATUS_PAUSED = 4;
    public static final int STATUS_PREPARE_DOWNLOAD = 1;
    public static final int STATUS_REMOVED = 7;
    public static final int STATUS_SERIES = 10;
    public static final int STATUS_TITLE = 11;
    public static final int STATUS_WAIT = 3;
    public static final int TRANSFER_RECEIVED = 3;
    public static final int TV = 3;
    public static final int TYPE_EDUCATION = 5;
    public static final int TYPE_MUSIC = 6;
    public static final int TYPE_STREAM = 7;
    public static final int UNREAD = 1;
    private TAdListener adProvide;
    private f audioListener;
    private int audioStatus;
    private String averageHueLight;
    private int count;
    private String countryName;
    private String cover;
    private long createAt;
    private long currentDownloadSpeed;
    private String currentDubLanCode;
    private String currentDubLanName;
    private long currentOffset;
    private int downloadErrorCount;
    private long downloadHeaderSize;
    private m0 downloadListener;
    private List<DownloadRange> downloadRanges;
    private Long duration;
    private int ep;
    private String epNameLocal;
    private int epse;
    private int errorCount;
    private DownloadException exception;
    private int fileType;
    private String genre;
    private String groupId;
    private String imdbRate;
    private int index;
    private boolean isAutoPause;
    private boolean isCheck;
    private boolean isClosedTransferFailed;
    private boolean isDownloadingPlay;
    private boolean isFroYouList;
    private boolean isMore;
    private boolean isPlaying;
    private boolean isPreDownload;
    private boolean isQuitDPRestart;
    private int isRead;
    private boolean isSeriesAllCheck;
    private boolean isStartRequested;
    private boolean isStream;
    private boolean isStreamVideoDetail;
    private boolean isTransferFailed;
    private int itemType;
    private String kidId;
    private Long lastAdEndTimeStamp;
    private Long lastAdStartTimeStamp;
    private String lastPageFrom;
    private long lastPlayTimeStamp;
    private long lastProgress;
    private int multiresolution;
    private String name;
    private String ops;
    private String originData;
    private String pageFrom;
    private String path;
    private String playingUrl;
    private int position;
    private String postId;
    private int preErrorCode;
    private int preStatus;
    private volatile long progress;
    private boolean reDownload;
    private long readProgress;
    private String releaseDate;
    private int reportStatus;
    private int requestNewSourceCount;
    private Integer requireMemberType;
    private int resolution;
    private String resourceId;
    private int resourcePosition;
    private int restartDownloadCount;
    private String restrictLevel;
    private String rootPath;
    private int rootPathType;
    private int se;
    private Integer seNum;
    private List<DownloadBean> seriesList;
    private long sessionTime;
    private Long size;
    private String sizeFormat;
    private String sourceUrl;
    private int status;
    private Integer subjectDurationSeconds;
    private String subjectId;
    private String subjectName;
    private int subjectType;
    private String subtitleIdType;
    private List<SubtitleBean> subtitleList;
    private String subtitleSelectId;
    private int subtitleStarted;
    private String subtitles;
    private int supportRanges;
    private String taskId;
    private String thumbnail;
    private String titleNameLocal;
    private String titleNameReLocal;
    private int totalEpisode;
    private String totalTitleNameLocal;
    private int type;
    private Integer ugcCateLev1Id;
    private Integer ugcCateLev2Id;
    private Integer ugcCateLev3Id;
    private Integer ugcCateLev4Id;
    private String ugcVideoCollectionId;
    private String ugcVideoCollectionName;
    private String ugcVideoEpTitle;
    private String ugcVideoId;
    private boolean ugcVideoIsVertical;
    private String ugcVideoName;
    private String ugcVideoParentTrackId;
    private String ugcVideoParentVideoId;
    private Integer ugcVideoPosition;
    private String ugcVideoTrackId;
    private String ugcVideoType;
    private Long updateTimeStamp;
    private String uploadBy;
    private String url;
    private long urlCreateAt;
    private int videoHeight;
    private int videoWidth;
    private VipInfo vipInfo;
    private TAdditionalListener wrapNativeManager;

    /* JADX INFO: renamed from: com.transsion.baselib.db.download.DownloadBean$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(Integer num) {
            int i11 = 2;
            if (num != null && num.intValue() == 2) {
                return 1;
            }
            if (num == null || num.intValue() != 3) {
                if (num != null && num.intValue() == 1) {
                    return 4;
                }
                if (num != null && num.intValue() == 5) {
                    return 5;
                }
                if (num == null) {
                    return 1;
                }
                i11 = 6;
                if (num.intValue() != 6) {
                    return 1;
                }
            }
            return i11;
        }

        public final boolean b(int i11) {
            return i11 == 2 || i11 == 3 || i11 == 5 || i11 == 6;
        }

        /* JADX WARN: Code duplicated, block: B:24:0x0030 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:26:0x0033  */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x0038, code lost:
        
            if (r6.intValue() == 6) goto L23;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int c(Integer num) {
            int i11;
            if (num != null && num.intValue() == 1) {
                return 2;
            }
            if (num == null || num.intValue() != 2) {
                if (num != null && num.intValue() == 4) {
                    return 1;
                }
                if (num == null) {
                    i11 = num != null ? 6 : 5;
                    if (num != null || num.intValue() != 7) {
                    }
                } else {
                    if (num.intValue() != 5) {
                        if (num != null) {
                        }
                        return num != null ? 2 : 2;
                    }
                }
                return i11;
            }
            return 3;
        }
    }

    public DownloadBean(String url, String str, String str2, String str3, Long l11, String str4, String str5, String str6, Long l12, Long l13, long j11, int i11, int i12, int i13, long j12, long j13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, String str7, String str8, String str9, String str10, long j14, int i25, int i26, String str11, String str12, long j15, String str13, String str14, long j16, int i27, long j17, String str15, int i28, String str16, String str17, boolean z10, boolean z11, int i29, String str18, Integer num, String str19, String str20, String str21, String str22, String str23, String str24, Integer num2, String str25, String str26, Long l14, Long l15, String str27, String str28, String str29, String str30, String str31, Integer num3, String str32, Integer num4, Integer num5, Integer num6, Integer num7, String str33, String str34, String str35, String str36, boolean z12, String str37, String str38) {
        Intrinsics.h(url, "url");
        this.url = url;
        this.resourceId = str;
        this.name = str2;
        this.cover = str3;
        this.size = l11;
        this.postId = str4;
        this.sizeFormat = str5;
        this.path = str6;
        this.duration = l12;
        this.updateTimeStamp = l13;
        this.progress = j11;
        this.supportRanges = i11;
        this.status = i12;
        this.type = i13;
        this.readProgress = j12;
        this.createAt = j13;
        this.isRead = i14;
        this.epse = i15;
        this.ep = i16;
        this.se = i17;
        this.resolution = i18;
        this.resourcePosition = i19;
        this.multiresolution = i20;
        this.videoWidth = i21;
        this.videoHeight = i22;
        this.downloadErrorCount = i23;
        this.subtitleStarted = i24;
        this.subjectId = str7;
        this.pageFrom = str8;
        this.lastPageFrom = str9;
        this.subjectName = str10;
        this.lastPlayTimeStamp = j14;
        this.fileType = i25;
        this.totalEpisode = i26;
        this.uploadBy = str11;
        this.sourceUrl = str12;
        this.urlCreateAt = j15;
        this.subtitleSelectId = str13;
        this.taskId = str14;
        this.sessionTime = j16;
        this.reportStatus = i27;
        this.downloadHeaderSize = j17;
        this.rootPath = str15;
        this.rootPathType = i28;
        this.thumbnail = str16;
        this.averageHueLight = str17;
        this.isTransferFailed = z10;
        this.isClosedTransferFailed = z11;
        this.subjectType = i29;
        this.genre = str18;
        this.subjectDurationSeconds = num;
        this.currentDubLanName = str19;
        this.currentDubLanCode = str20;
        this.ops = str21;
        this.restrictLevel = str22;
        this.releaseDate = str23;
        this.countryName = str24;
        this.seNum = num2;
        this.subtitles = str25;
        this.imdbRate = str26;
        this.lastAdStartTimeStamp = l14;
        this.lastAdEndTimeStamp = l15;
        this.subtitleIdType = str27;
        this.ugcVideoCollectionId = str28;
        this.ugcVideoId = str29;
        this.ugcVideoName = str30;
        this.ugcVideoCollectionName = str31;
        this.ugcVideoPosition = num3;
        this.ugcVideoType = str32;
        this.ugcCateLev1Id = num4;
        this.ugcCateLev2Id = num5;
        this.ugcCateLev3Id = num6;
        this.ugcCateLev4Id = num7;
        this.ugcVideoTrackId = str33;
        this.ugcVideoParentVideoId = str34;
        this.ugcVideoParentTrackId = str35;
        this.ugcVideoEpTitle = str36;
        this.ugcVideoIsVertical = z12;
        this.originData = str37;
        this.kidId = str38;
        this.downloadRanges = new CopyOnWriteArrayList();
        this.groupId = "";
        this.subtitleList = new CopyOnWriteArrayList();
        this.seriesList = new ArrayList();
        this.preErrorCode = -1;
        this.requireMemberType = 0;
        this.playingUrl = "";
        this.isSeriesAllCheck = true;
        this.itemType = this.status;
    }

    public /* synthetic */ DownloadBean(String str, String str2, String str3, String str4, Long l11, String str5, String str6, String str7, Long l12, Long l13, long j11, int i11, int i12, int i13, long j12, long j13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, String str8, String str9, String str10, String str11, long j14, int i25, int i26, String str12, String str13, long j15, String str14, String str15, long j16, int i27, long j17, String str16, int i28, String str17, String str18, boolean z10, boolean z11, int i29, String str19, Integer num, String str20, String str21, String str22, String str23, String str24, String str25, Integer num2, String str26, String str27, Long l14, Long l15, String str28, String str29, String str30, String str31, String str32, Integer num3, String str33, Integer num4, Integer num5, Integer num6, Integer num7, String str34, String str35, String str36, String str37, boolean z12, String str38, String str39, int i30, int i31, int i32, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, l11, (i30 & 32) != 0 ? "" : str5, (i30 & 64) != 0 ? "" : str6, (i30 & 128) != 0 ? "" : str7, (i30 & 256) != 0 ? 0L : l12, (i30 & 512) != 0 ? Long.valueOf(System.currentTimeMillis()) : l13, (i30 & 1024) != 0 ? 0L : j11, (i30 & 2048) != 0 ? 0 : i11, (i30 & 4096) != 0 ? 0 : i12, (i30 & 8192) != 0 ? 2 : i13, (i30 & 16384) != 0 ? 0L : j12, (i30 & 32768) != 0 ? System.currentTimeMillis() : j13, (i30 & 65536) != 0 ? 1 : i14, (i30 & 131072) != 0 ? 0 : i15, (i30 & 262144) != 0 ? 0 : i16, (i30 & 524288) != 0 ? 0 : i17, (i30 & 1048576) != 0 ? 0 : i18, (i30 & 2097152) != 0 ? 0 : i19, (i30 & 4194304) != 0 ? 0 : i20, (i30 & 8388608) != 0 ? 0 : i21, (i30 & 16777216) != 0 ? 0 : i22, (i30 & ASTNode.PCTX_STORED) != 0 ? 0 : i23, (i30 & 67108864) != 0 ? 0 : i24, (i30 & ASTNode.NOJIT) != 0 ? "" : str8, (i30 & ASTNode.DEOP) != 0 ? "" : str9, (i30 & ASTNode.DISCARD) != 0 ? "" : str10, (i30 & 1073741824) != 0 ? "" : str11, (i30 & Integer.MIN_VALUE) != 0 ? 0L : j14, (i31 & 1) != 0 ? 1 : i25, (i31 & 2) != 0 ? 1 : i26, (i31 & 4) != 0 ? "" : str12, (i31 & 8) != 0 ? "" : str13, (i31 & 16) != 0 ? 0L : j15, (i31 & 32) != 0 ? "" : str14, (i31 & 64) != 0 ? "" : str15, (i31 & 128) != 0 ? 0L : j16, (i31 & 256) != 0 ? 0 : i27, (i31 & 512) != 0 ? 0L : j17, (i31 & 1024) != 0 ? "" : str16, (i31 & 2048) != 0 ? 1 : i28, (i31 & 4096) != 0 ? "" : str17, (i31 & 8192) != 0 ? null : str18, (i31 & 16384) != 0 ? false : z10, (i31 & 32768) != 0 ? false : z11, (i31 & 65536) != 0 ? 1 : i29, (i31 & 131072) != 0 ? null : str19, (i31 & 262144) != 0 ? 0 : num, (i31 & 524288) != 0 ? null : str20, (i31 & 1048576) != 0 ? null : str21, (2097152 & i31) == 0 ? str22 : "", (4194304 & i31) != 0 ? null : str23, (8388608 & i31) != 0 ? null : str24, (16777216 & i31) != 0 ? null : str25, (33554432 & i31) != 0 ? 0 : num2, (67108864 & i31) != 0 ? null : str26, (134217728 & i31) != 0 ? null : str27, (268435456 & i31) != 0 ? null : l14, (536870912 & i31) != 0 ? null : l15, (1073741824 & i31) != 0 ? null : str28, (i31 & Integer.MIN_VALUE) != 0 ? null : str29, (i32 & 1) != 0 ? null : str30, (i32 & 2) != 0 ? null : str31, (i32 & 4) != 0 ? null : str32, (i32 & 8) != 0 ? null : num3, (i32 & 16) != 0 ? null : str33, (i32 & 32) != 0 ? null : num4, (i32 & 64) != 0 ? null : num5, (i32 & 128) != 0 ? null : num6, (i32 & 256) != 0 ? null : num7, (i32 & 512) != 0 ? null : str34, (i32 & 1024) != 0 ? null : str35, (i32 & 2048) != 0 ? null : str36, (i32 & 4096) != 0 ? null : str37, (i32 & 8192) != 0 ? false : z12, (i32 & 16384) != 0 ? null : str38, (i32 & 32768) != 0 ? null : str39);
    }

    public static /* synthetic */ String getEpTitleName$default(DownloadBean downloadBean, boolean z10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getEpTitleName");
        }
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        return downloadBean.getEpTitleName(z10);
    }

    public static /* synthetic */ void getPreStatus$annotations() {
    }

    public boolean equals(Object o11) {
        if (this == o11) {
            return true;
        }
        if (o11 == null || !Intrinsics.c(getClass(), o11.getClass())) {
            return false;
        }
        return StringsKt.I(this.resourceId, ((DownloadBean) o11).resourceId, false, 2, null);
    }

    public final TAdListener getAdProvide() {
        return this.adProvide;
    }

    public final f getAudioListener() {
        return this.audioListener;
    }

    public final int getAudioStatus() {
        return this.audioStatus;
    }

    public final String getAverageHueLight() {
        return this.averageHueLight;
    }

    public final boolean getCanPlay() {
        int i11 = this.status;
        return (i11 == 0 || i11 == 7) ? false : true;
    }

    public final int getCount() {
        return this.count;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getCover() {
        return this.cover;
    }

    public final long getCreateAt() {
        return this.createAt;
    }

    public final String getCreateAtFormat() {
        String strH = c0.h(this.createAt);
        Intrinsics.g(strH, "millis2String(...)");
        return strH;
    }

    public final long getCurrentDownloadSpeed() {
        return this.currentDownloadSpeed;
    }

    public final String getCurrentDubLanCode() {
        return this.currentDubLanCode;
    }

    public final String getCurrentDubLanName() {
        return this.currentDubLanName;
    }

    public final long getCurrentOffset() {
        return this.currentOffset;
    }

    public final int getDownloadErrorCount() {
        return this.downloadErrorCount;
    }

    public final long getDownloadHeaderSize() {
        return this.downloadHeaderSize;
    }

    public final m0 getDownloadListener() {
        return this.downloadListener;
    }

    public final List<DownloadRange> getDownloadRanges() {
        return this.downloadRanges;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final int getEp() {
        return this.ep;
    }

    public final String getEpName() {
        String str = this.ugcVideoId;
        if (str != null && str.length() != 0) {
            return "";
        }
        String str2 = this.epNameLocal;
        if (str2 != null && str2.length() > 0) {
            String str3 = this.epNameLocal;
            Intrinsics.e(str3);
            return str3;
        }
        if (!isSeries() || this.status == 10) {
            return "";
        }
        int i11 = this.ep;
        if (i11 > 0) {
            String strB = i.b(i11, this.se, Integer.valueOf(this.type));
            this.epNameLocal = strB;
            Intrinsics.e(strB);
            return strB;
        }
        String strC = i.c(this.epse, isVideo());
        this.epNameLocal = strC;
        Intrinsics.e(strC);
        return strC;
    }

    public final String getEpTitleName(boolean showSe) {
        if (this.subjectType == 5) {
            return "Lesson " + this.ep + i.d(this.name);
        }
        if (showSe) {
            return getEpName() + i.d(this.name);
        }
        return i.a(this.ep) + i.d(this.name);
    }

    public final int getEpse() {
        return this.epse;
    }

    public final int getErrorCount() {
        return this.errorCount;
    }

    public final DownloadException getException() {
        return this.exception;
    }

    public final String getFileName() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = "";
        if ((isSeries() || this.status == 10) && (str = this.subjectName) != null && str.length() > 0) {
            String str6 = this.subjectName;
            if (str6 == null) {
                str6 = "";
            }
            int i11 = this.resolution;
            if (i11 > 0) {
                str2 = "_" + i11 + "P";
            } else {
                str2 = "";
            }
            str3 = str6 + str2;
        } else if (this.resolution <= 0 || (str4 = this.subjectName) == null || str4.length() <= 0) {
            str3 = this.name;
            if (str3 == null) {
                str3 = "";
            }
        } else {
            str3 = this.subjectName + "_" + this.resolution + "P";
        }
        if (getEpName().length() > 0) {
            str5 = " " + getEpName();
        }
        return StringsKt.Q(str3 + str5, " ", "_", false, 4, null);
    }

    public final int getFileType() {
        return this.fileType;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public final String getImdbRate() {
        return this.imdbRate;
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // n6.a
    public int getItemType() {
        return this.itemType;
    }

    public final String getKidId() {
        return this.kidId;
    }

    public final Long getLastAdEndTimeStamp() {
        return this.lastAdEndTimeStamp;
    }

    public final Long getLastAdStartTimeStamp() {
        return this.lastAdStartTimeStamp;
    }

    public final String getLastPageFrom() {
        return this.lastPageFrom;
    }

    public final long getLastPlayTimeStamp() {
        return this.lastPlayTimeStamp;
    }

    public final long getLastProgress() {
        return this.lastProgress;
    }

    public final int getMultiresolution() {
        return this.multiresolution;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getOriginData() {
        return this.originData;
    }

    public final String getPageFrom() {
        return this.pageFrom;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getPlayingUrl() {
        return this.playingUrl;
    }

    public final int getPosition() {
        return this.position;
    }

    public final String getPostId() {
        return this.postId;
    }

    public final String getPostIdNotNull() {
        String str = this.postId;
        if (str != null) {
            return str;
        }
        String str2 = this.resourceId;
        return str2 == null ? String.valueOf(this.url.hashCode()) : str2;
    }

    public final int getPreErrorCode() {
        return this.preErrorCode;
    }

    public final int getPreStatus() {
        return this.preStatus;
    }

    public final long getProgress() {
        return this.progress;
    }

    public final boolean getReDownload() {
        return this.reDownload;
    }

    public final long getReadProgress() {
        return this.readProgress;
    }

    public final String getReleaseDate() {
        return this.releaseDate;
    }

    public final int getReportStatus() {
        return this.reportStatus;
    }

    public final int getRequestNewSourceCount() {
        return this.requestNewSourceCount;
    }

    public final Integer getRequireMemberType() {
        return this.requireMemberType;
    }

    public final int getResolution() {
        return this.resolution;
    }

    public final String getResourceId() {
        return this.resourceId;
    }

    public final int getResourcePosition() {
        return this.resourcePosition;
    }

    public final int getRestartDownloadCount() {
        return this.restartDownloadCount;
    }

    public final String getRestrictLevel() {
        return this.restrictLevel;
    }

    public final String getRootPath() {
        return this.rootPath;
    }

    public final int getRootPathType() {
        return this.rootPathType;
    }

    public final int getSe() {
        return this.se;
    }

    public final Integer getSeNum() {
        return this.seNum;
    }

    public final List<DownloadBean> getSeriesList() {
        return this.seriesList;
    }

    public final long getSessionTime() {
        return this.sessionTime;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getSizeFormat() {
        return this.sizeFormat;
    }

    public final String getSourceUrl() {
        return this.sourceUrl;
    }

    public final int getStatus() {
        return this.status;
    }

    public final Integer getSubjectDurationSeconds() {
        return this.subjectDurationSeconds;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getSubjectName() {
        return this.subjectName;
    }

    public final int getSubjectType() {
        return this.subjectType;
    }

    public final String getSubtitleIdType() {
        return this.subtitleIdType;
    }

    public final List<SubtitleBean> getSubtitleList() {
        return this.subtitleList;
    }

    public final String getSubtitleResId() {
        if (isUGCVideo()) {
            return this.ugcVideoId + "_" + this.subtitleIdType;
        }
        return this.subjectId + "_" + this.se + "_" + this.ep + "_en_" + (this.isStream ? 2 : 1);
    }

    public final String getSubtitleSelectId() {
        return this.subtitleSelectId;
    }

    public final int getSubtitleStarted() {
        return this.subtitleStarted;
    }

    public final String getSubtitles() {
        return this.subtitles;
    }

    public final int getSupportRanges() {
        return this.supportRanges;
    }

    public final String getTaskId() {
        return this.taskId;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0030  */
    /* JADX WARN: Code duplicated, block: B:29:0x0040  */
    public final String getTitleName() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = this.titleNameLocal;
        if (str5 == null || str5.length() <= 0) {
            if (isUGCVideo()) {
                if (this.status != 10 || (str4 = this.ugcVideoCollectionName) == null || str4.length() == 0) {
                    str = this.ugcVideoName;
                    if (str == null) {
                        str = this.name;
                        if (str == null) {
                            str = "";
                        }
                    } else {
                        if (StringsKt.q0(str)) {
                            str = null;
                        }
                        if (str == null) {
                            str = this.name;
                            if (str == null) {
                                str = "";
                            }
                        }
                    }
                } else {
                    str = this.ugcVideoCollectionName;
                    if (str == null) {
                        str = "";
                    }
                }
            } else if (isSeries() || (this.status == 10 && (str3 = this.subjectName) != null && str3.length() > 0)) {
                str = this.subjectName;
                if (str == null) {
                    str = "";
                }
            } else if (this.resolution <= 0 || (str2 = this.subjectName) == null || str2.length() <= 0) {
                str = this.name;
                if (str == null) {
                    str = "";
                }
            } else {
                str = this.resolution + "P " + this.subjectName;
            }
            this.titleNameLocal = str;
            if (str == null) {
                return "";
            }
        } else {
            str = this.titleNameLocal;
            if (str == null) {
                return "";
            }
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0030  */
    /* JADX WARN: Code duplicated, block: B:29:0x0041  */
    public final String getTitleNameAppendResolution() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6 = this.titleNameReLocal;
        if (str6 == null || str6.length() <= 0) {
            if (isUGCVideo()) {
                if (this.status != 10 || (str5 = this.ugcVideoCollectionName) == null || str5.length() == 0) {
                    str2 = this.ugcVideoName;
                    if (str2 == null) {
                        str2 = this.name;
                        if (str2 == null) {
                            str2 = "";
                        }
                    } else {
                        if (StringsKt.q0(str2)) {
                            str2 = null;
                        }
                        if (str2 == null) {
                            str2 = this.name;
                            if (str2 == null) {
                                str2 = "";
                            }
                        }
                    }
                } else {
                    str2 = this.ugcVideoCollectionName;
                    if (str2 == null) {
                        str2 = "";
                    }
                }
            } else if (isSeries() || (this.status == 10 && (str4 = this.subjectName) != null && str4.length() > 0)) {
                String str7 = this.subjectName;
                if (str7 == null) {
                    str7 = "";
                }
                int i11 = this.resolution;
                if (i11 > 0) {
                    str = " " + i11 + "P";
                } else {
                    str = "";
                }
                str2 = str7 + str;
            } else if (this.resolution <= 0 || (str3 = this.subjectName) == null || str3.length() <= 0) {
                str2 = this.name;
                if (str2 == null) {
                    str2 = "";
                }
            } else {
                str2 = this.resolution + "P " + this.subjectName;
            }
            this.titleNameReLocal = str2;
            if (str2 == null) {
                return "";
            }
        } else {
            str2 = this.titleNameReLocal;
            if (str2 == null) {
                return "";
            }
        }
        return str2;
    }

    public final int getTotalEpisode() {
        return this.totalEpisode;
    }

    public final String getTotalTitleName() {
        String str = this.totalTitleNameLocal;
        if (str != null && str.length() > 0) {
            String str2 = this.totalTitleNameLocal;
            Intrinsics.e(str2);
            return str2;
        }
        String str3 = getTitleName() + " " + getEpName();
        this.totalTitleNameLocal = str3;
        Intrinsics.e(str3);
        return str3;
    }

    public final int getType() {
        return this.type;
    }

    public final Integer getUgcCateLev1Id() {
        return this.ugcCateLev1Id;
    }

    public final Integer getUgcCateLev2Id() {
        return this.ugcCateLev2Id;
    }

    public final Integer getUgcCateLev3Id() {
        return this.ugcCateLev3Id;
    }

    public final Integer getUgcCateLev4Id() {
        return this.ugcCateLev4Id;
    }

    public final String getUgcVideoCollectionId() {
        return this.ugcVideoCollectionId;
    }

    public final String getUgcVideoCollectionName() {
        return this.ugcVideoCollectionName;
    }

    public final String getUgcVideoEpTitle() {
        return this.ugcVideoEpTitle;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final boolean getUgcVideoIsVertical() {
        return this.ugcVideoIsVertical;
    }

    public final String getUgcVideoName() {
        return this.ugcVideoName;
    }

    public final String getUgcVideoParentTrackId() {
        return this.ugcVideoParentTrackId;
    }

    public final String getUgcVideoParentVideoId() {
        return this.ugcVideoParentVideoId;
    }

    public final Integer getUgcVideoPosition() {
        return this.ugcVideoPosition;
    }

    public final String getUgcVideoTrackId() {
        return this.ugcVideoTrackId;
    }

    public final String getUgcVideoType() {
        return this.ugcVideoType;
    }

    public final Long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    public final String getUploadBy() {
        return this.uploadBy;
    }

    public final String getUrl() {
        return this.url;
    }

    public final long getUrlCreateAt() {
        return this.urlCreateAt;
    }

    public final int getVideoHeight() {
        return this.videoHeight;
    }

    public final int getVideoWidth() {
        return this.videoWidth;
    }

    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public final TAdditionalListener getWrapNativeManager() {
        return this.wrapNativeManager;
    }

    public int hashCode() {
        String str = this.resourceId;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final boolean is4xxError() {
        DownloadException downloadException = this.exception;
        int responseCode = downloadException != null ? downloadException.getResponseCode() : 0;
        return 400 <= responseCode && responseCode < 500;
    }

    public final boolean isAllFileExist() {
        if (this.status != 10) {
            return isFileExist();
        }
        Iterator<DownloadBean> it = this.seriesList.iterator();
        while (it.hasNext()) {
            if (it.next().isFileExist()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: isAutoPause, reason: from getter */
    public final boolean getIsAutoPause() {
        return this.isAutoPause;
    }

    public final boolean isCNDError() {
        DownloadException.Companion aVar = DownloadException.INSTANCE;
        DownloadException downloadException = this.exception;
        if (!aVar.c(downloadException != null ? downloadException.getCode() : 0)) {
            DownloadException downloadException2 = this.exception;
            int responseCode = downloadException2 != null ? downloadException2.getResponseCode() : 0;
            if (500 > responseCode || responseCode >= 600) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: isCheck, reason: from getter */
    public final boolean getIsCheck() {
        return this.isCheck;
    }

    /* JADX INFO: renamed from: isClosedTransferFailed, reason: from getter */
    public final boolean getIsClosedTransferFailed() {
        return this.isClosedTransferFailed;
    }

    public final boolean isCompleted() {
        return this.status == 5;
    }

    public final boolean isDownloadInSDCard() {
        return this.rootPathType == 2;
    }

    public final boolean isDownloading() {
        int i11 = this.status;
        return i11 == 1 || i11 == 2;
    }

    /* JADX INFO: renamed from: isDownloadingPlay, reason: from getter */
    public final boolean getIsDownloadingPlay() {
        return this.isDownloadingPlay;
    }

    public final boolean isFileExist() {
        String str = this.path;
        if (str == null || str.length() == 0) {
            return false;
        }
        String str2 = this.path;
        Intrinsics.e(str2);
        if (StringsKt.W(str2, "content", false, 2, null)) {
            k1.a aVarG = k1.a.g(Utils.a(), Uri.parse(this.path));
            if (aVarG != null) {
                return aVarG.e();
            }
        } else {
            String str3 = this.path;
            Intrinsics.e(str3);
            File file = new File(str3);
            if (!file.exists() || file.length() <= 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: isFroYouList, reason: from getter */
    public final boolean getIsFroYouList() {
        return this.isFroYouList;
    }

    public final boolean isInnerRes() {
        return this.fileType == 1;
    }

    public final boolean isInnerSubjectRes() {
        if (this.fileType == 1) {
            String str = this.resourceId;
            if ((str != null ? StringsKt.x(str) : null) != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: isMore, reason: from getter */
    public final boolean getIsMore() {
        return this.isMore;
    }

    public final boolean isMultiresolution() {
        return this.multiresolution > 0;
    }

    public final boolean isMusic() {
        String str = this.ugcVideoId;
        if (str == null || str.length() == 0) {
            return this.type == 6;
        }
        return Intrinsics.c(this.ugcVideoType, HotRankItem.CATE_MUSIC);
    }

    public final boolean isNoNetError() {
        DownloadException downloadException = this.exception;
        return Intrinsics.c(downloadException != null ? downloadException.getMessage() : null, DownloadException.EXCEPTION_MESSAGE_NO_NET);
    }

    public final boolean isOutside() {
        return this.fileType == 2;
    }

    public final boolean isPause() {
        int i11 = this.status;
        return i11 == 4 || i11 == 6 || i11 == 7 || i11 == 3;
    }

    /* JADX INFO: renamed from: isPlaying, reason: from getter */
    public final boolean getIsPlaying() {
        return this.isPlaying;
    }

    /* JADX INFO: renamed from: isPreDownload, reason: from getter */
    public final boolean getIsPreDownload() {
        return this.isPreDownload;
    }

    /* JADX INFO: renamed from: isQuitDPRestart, reason: from getter */
    public final boolean getIsQuitDPRestart() {
        return this.isQuitDPRestart;
    }

    /* JADX INFO: renamed from: isRead, reason: from getter */
    public final int getIsRead() {
        return this.isRead;
    }

    public final boolean isRemoved() {
        return this.status == 7;
    }

    public final boolean isSaved() {
        String strF1;
        String str = this.path;
        if (str == null || str.length() == 0) {
            return false;
        }
        String str2 = this.path;
        if (str2 == null || (strF1 = StringsKt.f1(str2, "/", null, 2, null)) == null) {
            strF1 = "";
        }
        File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath() + File.separatorChar + "MovieBox", strF1);
        return file.exists() && file.length() > 0;
    }

    public final boolean isSeries() {
        return this.epse > 0 || this.ep > 0 || this.totalEpisode > 1;
    }

    /* JADX INFO: renamed from: isSeriesAllCheck, reason: from getter */
    public final boolean getIsSeriesAllCheck() {
        return this.isSeriesAllCheck;
    }

    public final boolean isSeriesCollection() {
        return this.status == 10;
    }

    public final boolean isShorts() {
        return this.type == 9;
    }

    public final boolean isShotTV() {
        return this.subjectType == 7 || Intrinsics.c(this.ugcVideoType, "ShortTV");
    }

    /* JADX INFO: renamed from: isStartRequested, reason: from getter */
    public final boolean getIsStartRequested() {
        return this.isStartRequested;
    }

    /* JADX INFO: renamed from: isStream, reason: from getter */
    public final boolean getIsStream() {
        return this.isStream;
    }

    /* JADX INFO: renamed from: isStreamVideoDetail, reason: from getter */
    public final boolean getIsStreamVideoDetail() {
        return this.isStreamVideoDetail;
    }

    public final boolean isSupportRanges() {
        return this.supportRanges == 0;
    }

    /* JADX INFO: renamed from: isTransferFailed, reason: from getter */
    public final boolean getIsTransferFailed() {
        return this.isTransferFailed;
    }

    public final boolean isUGCVideo() {
        String str = this.ugcVideoId;
        return !(str == null || str.length() == 0) || (g.f639a.b() && !isInnerRes());
    }

    public final boolean isUnable() {
        int i11 = this.status;
        return (i11 == 0 || i11 == 7) ? false : true;
    }

    public final boolean isVideo() {
        return INSTANCE.b(this.type);
    }

    @Override // lj.i1
    public boolean isVideoPlaying() {
        return this.isPlaying;
    }

    public final void setAdProvide(TAdListener tAdListener) {
        this.adProvide = tAdListener;
    }

    public final void setAudioListener(f fVar) {
        this.audioListener = fVar;
    }

    public final void setAudioStatus(int i11) {
        this.audioStatus = i11;
    }

    public final void setAutoPause(boolean z10) {
        this.isAutoPause = z10;
    }

    public final void setAverageHueLight(String str) {
        this.averageHueLight = str;
    }

    public final void setCheck(boolean z10) {
        this.isCheck = z10;
    }

    public final void setClosedTransferFailed(boolean z10) {
        this.isClosedTransferFailed = z10;
    }

    public final void setCount(int i11) {
        this.count = i11;
    }

    public final void setCountryName(String str) {
        this.countryName = str;
    }

    public final void setCover(String str) {
        this.cover = str;
    }

    public final void setCreateAt(long j11) {
        this.createAt = j11;
    }

    public final void setCurrentDownloadSpeed(long j11) {
        this.currentDownloadSpeed = j11;
    }

    public final void setCurrentDubLanCode(String str) {
        this.currentDubLanCode = str;
    }

    public final void setCurrentDubLanName(String str) {
        this.currentDubLanName = str;
    }

    public final void setCurrentOffset(long j11) {
        this.currentOffset = j11;
    }

    public final void setDownloadErrorCount(int i11) {
        this.downloadErrorCount = i11;
    }

    public final void setDownloadHeaderSize(long j11) {
        this.downloadHeaderSize = j11;
    }

    public final void setDownloadListener(m0 m0Var) {
        this.downloadListener = m0Var;
    }

    public final void setDownloadRanges(List<DownloadRange> list) {
        Intrinsics.h(list, "<set-?>");
        this.downloadRanges = list;
    }

    public final void setDownloadingPlay(boolean z10) {
        this.isDownloadingPlay = z10;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setEpse(int i11) {
        this.epse = i11;
    }

    public final void setErrorCount(int i11) {
        this.errorCount = i11;
    }

    public final void setException(DownloadException downloadException) {
        this.exception = downloadException;
    }

    public final void setFileType(int i11) {
        this.fileType = i11;
    }

    public final void setFroYouList(boolean z10) {
        this.isFroYouList = z10;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public final void setGroupId(String str) {
        this.groupId = str;
    }

    public final void setImdbRate(String str) {
        this.imdbRate = str;
    }

    public final void setIndex(int i11) {
        this.index = i11;
    }

    public void setItemType(int i11) {
        this.itemType = i11;
    }

    public final void setKidId(String str) {
        this.kidId = str;
    }

    public final void setLastAdEndTimeStamp(Long l11) {
        this.lastAdEndTimeStamp = l11;
    }

    public final void setLastAdStartTimeStamp(Long l11) {
        this.lastAdStartTimeStamp = l11;
    }

    public final void setLastPageFrom(String str) {
        this.lastPageFrom = str;
    }

    public final void setLastPlayTimeStamp(long j11) {
        this.lastPlayTimeStamp = j11;
    }

    public final void setLastProgress(long j11) {
        this.lastProgress = j11;
    }

    public final void setMore(boolean z10) {
        this.isMore = z10;
    }

    public final void setMultiresolution(int i11) {
        this.multiresolution = i11;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setOriginData(String str) {
        this.originData = str;
    }

    public final void setPageFrom(String str) {
        this.pageFrom = str;
    }

    public final void setPath(String str) {
        this.path = str;
    }

    public final void setPlaying(boolean z10) {
        this.isPlaying = z10;
    }

    public final void setPlayingUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.playingUrl = str;
    }

    public final void setPosition(int i11) {
        this.position = i11;
    }

    public final void setPostId(String str) {
        this.postId = str;
    }

    public final void setPreDownload(boolean z10) {
        this.isPreDownload = z10;
    }

    public final void setPreErrorCode(int i11) {
        this.preErrorCode = i11;
    }

    public final void setPreStatus(int i11) {
        this.preStatus = i11;
    }

    public final void setProgress(long j11) {
        this.progress = j11;
    }

    public final void setQuitDPRestart(boolean z10) {
        this.isQuitDPRestart = z10;
    }

    public final void setReDownload(boolean z10) {
        this.reDownload = z10;
    }

    public final void setRead(int i11) {
        this.isRead = i11;
    }

    public final void setReadProgress(long j11) {
        this.readProgress = j11;
    }

    public final void setReleaseDate(String str) {
        this.releaseDate = str;
    }

    public final void setReportStatus(int i11) {
        this.reportStatus = i11;
    }

    public final void setRequestNewSourceCount(int i11) {
        this.requestNewSourceCount = i11;
    }

    public final void setRequireMemberType(Integer num) {
        this.requireMemberType = num;
    }

    public final void setResolution(int i11) {
        this.resolution = i11;
    }

    public final void setResourceId(String str) {
        this.resourceId = str;
    }

    public final void setResourcePosition(int i11) {
        this.resourcePosition = i11;
    }

    public final void setRestartDownloadCount(int i11) {
        this.restartDownloadCount = i11;
    }

    public final void setRestrictLevel(String str) {
        this.restrictLevel = str;
    }

    public final void setRootPath(String str) {
        this.rootPath = str;
    }

    public final void setRootPathType(int i11) {
        this.rootPathType = i11;
    }

    public final void setSe(int i11) {
        this.se = i11;
    }

    public final void setSeNum(Integer num) {
        this.seNum = num;
    }

    public final void setSeriesAllCheck(boolean z10) {
        this.isSeriesAllCheck = z10;
    }

    public final void setSeriesList(List<DownloadBean> list) {
        Intrinsics.h(list, "<set-?>");
        this.seriesList = list;
    }

    public final void setSessionTime(long j11) {
        this.sessionTime = j11;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setSizeFormat(String str) {
        this.sizeFormat = str;
    }

    public final void setSourceUrl(String str) {
        this.sourceUrl = str;
    }

    public final void setStartRequested(boolean z10) {
        this.isStartRequested = z10;
    }

    public final void setStatus(int i11) {
        this.status = i11;
    }

    public final void setStream(boolean z10) {
        this.isStream = z10;
    }

    public final void setStreamVideoDetail(boolean z10) {
        this.isStreamVideoDetail = z10;
    }

    public final void setSubjectDurationSeconds(Integer num) {
        this.subjectDurationSeconds = num;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectName(String str) {
        this.subjectName = str;
    }

    public final void setSubjectType(int i11) {
        this.subjectType = i11;
    }

    public final void setSubtitleIdType(String str) {
        this.subtitleIdType = str;
    }

    public final void setSubtitleList(List<SubtitleBean> list) {
        Intrinsics.h(list, "<set-?>");
        this.subtitleList = list;
    }

    public final void setSubtitleSelectId(String str) {
        this.subtitleSelectId = str;
    }

    public final void setSubtitleStarted(int i11) {
        this.subtitleStarted = i11;
    }

    public final void setSubtitles(String str) {
        this.subtitles = str;
    }

    public final void setSupportRanges(int i11) {
        this.supportRanges = i11;
    }

    public final void setSupportRanges(boolean supportRanges) {
        this.supportRanges = !supportRanges ? 1 : 0;
    }

    public final void setTaskId(String str) {
        this.taskId = str;
    }

    public final void setThumbnail(String str) {
        this.thumbnail = str;
    }

    public final void setTotalEpisode(int i11) {
        this.totalEpisode = i11;
    }

    public final void setTransferFailed(boolean z10) {
        this.isTransferFailed = z10;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public final void setUgcCateLev1Id(Integer num) {
        this.ugcCateLev1Id = num;
    }

    public final void setUgcCateLev2Id(Integer num) {
        this.ugcCateLev2Id = num;
    }

    public final void setUgcCateLev3Id(Integer num) {
        this.ugcCateLev3Id = num;
    }

    public final void setUgcCateLev4Id(Integer num) {
        this.ugcCateLev4Id = num;
    }

    public final void setUgcVideoCollectionId(String str) {
        this.ugcVideoCollectionId = str;
    }

    public final void setUgcVideoCollectionName(String str) {
        this.ugcVideoCollectionName = str;
    }

    public final void setUgcVideoEpTitle(String str) {
        this.ugcVideoEpTitle = str;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }

    public final void setUgcVideoIsVertical(boolean z10) {
        this.ugcVideoIsVertical = z10;
    }

    public final void setUgcVideoName(String str) {
        this.ugcVideoName = str;
    }

    public final void setUgcVideoParentTrackId(String str) {
        this.ugcVideoParentTrackId = str;
    }

    public final void setUgcVideoParentVideoId(String str) {
        this.ugcVideoParentVideoId = str;
    }

    public final void setUgcVideoPosition(Integer num) {
        this.ugcVideoPosition = num;
    }

    public final void setUgcVideoTrackId(String str) {
        this.ugcVideoTrackId = str;
    }

    public final void setUgcVideoType(String str) {
        this.ugcVideoType = str;
    }

    public final void setUpdateTimeStamp(Long l11) {
        this.updateTimeStamp = l11;
    }

    public final void setUploadBy(String str) {
        this.uploadBy = str;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public final void setUrlCreateAt(long j11) {
        this.urlCreateAt = j11;
    }

    public final void setVideoHeight(int i11) {
        this.videoHeight = i11;
    }

    @Override // lj.i1
    public void setVideoIsPlaying(boolean isPlaying) {
        this.isPlaying = isPlaying;
    }

    public final void setVideoWidth(int i11) {
        this.videoWidth = i11;
    }

    public final void setVipInfo(VipInfo vipInfo) {
        this.vipInfo = vipInfo;
    }

    public final void setWrapNativeManager(TAdditionalListener tAdditionalListener) {
        this.wrapNativeManager = tAdditionalListener;
    }

    @Override // lj.i1
    public String videoCorner() {
        return null;
    }

    @Override // lj.i1
    public String videoCoverUrl() {
        return this.cover;
    }

    @Override // lj.i1
    public Long videoDuration() {
        Long l11 = this.duration;
        if (l11 != null) {
            return Long.valueOf(l11.longValue() / 1000);
        }
        return null;
    }

    @Override // lj.i1
    public String videoEpTitle() {
        return this.ugcVideoEpTitle;
    }

    @Override // lj.i1
    public String videoResourceId() {
        return this.resourceId;
    }

    @Override // lj.i1
    public String videoThumbnail() {
        return this.thumbnail;
    }

    @Override // lj.i1
    public String videoTitle() {
        return getTitleName();
    }

    @Override // lj.i1
    public String videoUGCId() {
        String str = this.ugcVideoId;
        return str == null ? this.resourceId : str;
    }

    @Override // lj.i1
    public int videoUGCPosition() {
        Integer num = this.ugcVideoPosition;
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    @Override // lj.i1
    public String videoUGCType() {
        return this.ugcVideoType;
    }

    @Override // lj.i1
    public String videoUGCWatchNum() {
        return null;
    }
}
