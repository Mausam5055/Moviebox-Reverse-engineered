.class public Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/cloud/hisavana/sdk/g4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;,
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;,
        Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0016\u0018\u0000 a2\u00020\u00012\u00020\u0002:\u0003TQYB\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008&\u0010$J\u000f\u0010\'\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008)\u0010\u0004J\'\u0010-\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008/\u0010\u0004J\u000f\u00100\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u00080\u0010\u0004J\u0017\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00082\u00103J\u0019\u00106\u001a\u00020\u00052\u0008\u00105\u001a\u0004\u0018\u000104H\u0002\u00a2\u0006\u0004\u00086\u00107J!\u0010;\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0002\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008>\u00103J\u0017\u0010@\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001dH\u0002\u00a2\u0006\u0004\u0008@\u0010 J!\u0010C\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001d2\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u0019\u0010G\u001a\u00020\u00052\u0008\u0010F\u001a\u0004\u0018\u00010EH\u0014\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010K\u001a\u00020\u00052\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010M\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008M\u0010\u0004J\u000f\u0010N\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008N\u0010\u0004J\u000f\u0010O\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008O\u0010\u0004J\u000f\u0010P\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008P\u0010\u0004J!\u0010Q\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\u0008\u0010:\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008Q\u0010<J\u0017\u0010T\u001a\u00020\u00052\u0006\u0010S\u001a\u00020RH\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\u0011\u0010W\u001a\u0004\u0018\u00010VH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\u000f\u0010Y\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008Y\u0010\u000fJ\u0017\u0010T\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008T\u00103J\u000f\u0010[\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008[\u0010\u0004J\u000f\u0010T\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008T\u0010\u0004J\u000f\u0010\\\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\\\u0010\u0004J\u0019\u0010T\u001a\u00020\u00052\u0008\u0010]\u001a\u0004\u0018\u000109H\u0016\u00a2\u0006\u0004\u0008T\u0010^J\u000f\u0010Q\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008Q\u0010\u0004R\u0014\u0010`\u001a\u00020\u001d8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008T\u0010_R\u0014\u0010b\u001a\u00020R8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008Q\u0010aR\u0016\u0010d\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Y\u0010cR\u0018\u0010f\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010eR\u0016\u0010g\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\\\u0010_R\u0016\u0010h\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010cR\u0016\u0010j\u001a\u00020R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010aR\u0018\u0010m\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010oR\u0018\u0010s\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010rR\u0018\u0010v\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010uR\u0018\u0010y\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010xR\u0018\u0010{\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010rR\u0018\u0010}\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010rR\u0018\u0010\u007f\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010rR\u001c\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u001b\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00086\u0010\u0096\u0001R\u0018\u0010\u009a\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u0099\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008C\u0010\u0099\u0001R\u0017\u0010\u009c\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010cR\u0018\u0010\u009e\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u009d\u0001\u0010cR\u001a\u0010\u00a2\u0001\u001a\u00030\u009f\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R\u0017\u0010\u00a3\u0001\u001a\u00020R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010aR,\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00a4\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\u001a\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\"\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R,\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u00ac\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\"\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R\u0018\u0010\u00b5\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b4\u0001\u0010@R\u0017\u0010\u00b6\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010@R\u0017\u0010\u00b7\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010@R\u0017\u0010\u00b8\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010@\u00a8\u0006\u00b9\u0001"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;",
        "Landroid/app/Activity;",
        "Lcom/cloud/hisavana/sdk/g4;",
        "<init>",
        "()V",
        "",
        "j",
        "Y",
        "S",
        "U",
        "n0",
        "g0",
        "p0",
        "",
        "q0",
        "()Z",
        "c0",
        "i0",
        "j0",
        "t0",
        "l0",
        "",
        "volume",
        "k",
        "(F)V",
        "s0",
        "a0",
        "r0",
        "e0",
        "",
        "videoUrl",
        "w",
        "(Ljava/lang/String;)V",
        "",
        "duration",
        "B",
        "(J)V",
        "remainingDuration",
        "l",
        "h",
        "w0",
        "i",
        "title",
        "message",
        "buttonText",
        "y",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "u0",
        "v0",
        "isShowToast",
        "L",
        "(Z)V",
        "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;",
        "adErrorCode",
        "v",
        "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V",
        "isClose",
        "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;",
        "downUpPointBean",
        "H",
        "(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V",
        "isSentEvent",
        "G",
        "event",
        "F",
        "",
        "params",
        "x",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "onResume",
        "onPause",
        "onBackPressed",
        "onDestroy",
        "b",
        "",
        "psClickType",
        "a",
        "(I)V",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "f",
        "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "c",
        "status",
        "d",
        "e",
        "pointBean",
        "(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V",
        "Ljava/lang/String;",
        "tag",
        "I",
        "defaultDuration",
        "J",
        "rewardDuration",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
        "adBean",
        "prefix",
        "observerId",
        "g",
        "adMediaType",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "adMainLayout",
        "Landroid/widget/FrameLayout;",
        "Landroid/widget/FrameLayout;",
        "adContainer",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "adVolume",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;",
        "adChronometer",
        "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;",
        "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;",
        "adVideoView",
        "m",
        "adImageView",
        "n",
        "adIcon",
        "o",
        "adChoicesView",
        "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;",
        "p",
        "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;",
        "adBadgeView",
        "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;",
        "q",
        "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;",
        "adCloseView",
        "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;",
        "r",
        "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;",
        "storeMarkView",
        "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;",
        "s",
        "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;",
        "adDisclaimerView",
        "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;",
        "t",
        "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;",
        "interactiveWebView",
        "Lcom/cloud/hisavana/sdk/common/util/v;",
        "u",
        "Lcom/cloud/hisavana/sdk/common/util/v;",
        "retainDialog",
        "ruDialog",
        "Z",
        "isLandscape",
        "isNeedRuMargin",
        "lastClickTime",
        "z",
        "triggerMillis",
        "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;",
        "A",
        "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;",
        "state",
        "closeDelayTimeDuration",
        "Lcom/cloud/hisavana/sdk/o0;",
        "C",
        "Lcom/cloud/hisavana/sdk/o0;",
        "V",
        "()Lcom/cloud/hisavana/sdk/o0;",
        "setRewardStyle",
        "(Lcom/cloud/hisavana/sdk/o0;)V",
        "rewardStyle",
        "Le7/i;",
        "D",
        "Le7/i;",
        "getHsConfirmPopUpWindow",
        "()Le7/i;",
        "setHsConfirmPopUpWindow",
        "(Le7/i;)V",
        "hsConfirmPopUpWindow",
        "E",
        "downX",
        "downY",
        "upX",
        "upY",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final I:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

.field private static J:Ljava/lang/ref/WeakReference;


# instance fields
.field private A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

.field private B:I

.field private C:Lcom/cloud/hisavana/sdk/o0;

.field private D:Le7/i;

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:J

.field private d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

.field private l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

.field private q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

.field private r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

.field private s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

.field private t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private u:Lcom/cloud/hisavana/sdk/common/util/v;

.field private v:Lcom/cloud/hisavana/sdk/common/util/v;

.field private w:Z

.field private x:Z

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->I:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "Rewarded"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const/4 v0, 0x5

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c:J

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e:Ljava/lang/String;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;-><init>(JFZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H:F

    return-void
.end method

.method public static final synthetic A(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method private final B(J)V
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------> startCountdown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/o0;->c(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i()V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$string;->disclaimer:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/util/f0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDisclaimerText(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/hisavana/sdk/R$string;->ok:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/o0;->j()V

    :cond_6
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->getFinishedString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$j;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->startCountdown(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->countdownText(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$k;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setTickListener(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public static final synthetic C(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F:F

    return-void
.end method

.method private static final D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->toggleVolume()V

    :cond_0
    return-void
.end method

.method public static final synthetic E(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->L(Z)V

    return-void
.end method

.method private final F(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final G(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "_close"

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private final H(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y:J

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/Pair;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "_click"

    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic I(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/HSChronometer;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    return-object p0
.end method

.method public static final synthetic J(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G:F

    return-void
.end method

.method private static final K(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->isTimeUp()Z

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->pause()J

    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i()V

    :goto_2
    return-void
.end method

.method private final L(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/o0;->l()V

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerShowSpend()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v0, "_rewarded"

    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setRewarded(Z)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    return-void
.end method

.method public static final synthetic M(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic N(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H:F

    return-void
.end method

.method public static final synthetic O(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic P(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k(F)V

    return-void
.end method

.method public static final synthetic Q(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    return-object p0
.end method

.method public static final synthetic R(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E:F

    return p0
.end method

.method private final S()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "R02"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "getDecorView(...)"

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v0, Lcom/cloud/hisavana/sdk/x1;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p0}, Lcom/cloud/hisavana/sdk/x1;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/g4;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    goto :goto_1

    :cond_1
    const-string v1, "R01"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/cloud/hisavana/sdk/u1;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p0}, Lcom/cloud/hisavana/sdk/u1;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/g4;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/u1;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p0}, Lcom/cloud/hisavana/sdk/u1;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/g4;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/o0;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    :try_start_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_LAYOUT_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_3
    :goto_2
    return-void
.end method

.method public static final synthetic T(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F:F

    return p0
.end method

.method private final U()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/d;->a(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setSystemBarsBehavior(I)V

    return-void
.end method

.method public static final synthetic W(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-object p0
.end method

.method public static final synthetic X(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/v;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    return-object p0
.end method

.method private final Y()V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w:Z

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->S()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->n0()V

    return-void
.end method

.method public static final synthetic Z(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/util/v;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    return-object p0
.end method

.method private final a0()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public static final synthetic b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    return-object p0
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->K(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V

    return-void
.end method

.method private final c0()V
    .locals 5

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_name:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/o0;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_4
    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic d0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final e0()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$d;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_0
    return-void
.end method

.method public static synthetic f(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public static final synthetic f0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G:F

    return p0
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V

    return-void
.end method

.method private final g0()V
    .locals 4

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;

    invoke-direct {v2, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r0()V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t0()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s0()V

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure()Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;

    invoke-direct {v3, p0, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    :cond_a
    return-void
.end method

.method private final h()V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------> onResume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->resumeCountdown(J)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->resume()V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPaused(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/o0;->i()V

    :cond_4
    return-void
.end method

.method public static final synthetic h0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)F
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H:F

    return p0
.end method

.method private final i()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/v;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$h;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$string;->not_reward_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/cloud/hisavana/sdk/R$string;->not_reward_content:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/cloud/hisavana/sdk/R$string;->continue_txt:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->i(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setShowRetainDialog(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showRetainDialog error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private final i0()V
    .locals 5

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/i;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/i;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    invoke-static {v2, v0, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    const/4 v4, 0x3

    invoke-static {v0, v2, v4, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->p:Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/common/util/f0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    :cond_4
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    :cond_5
    sget-object v2, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, p0, v1, p0, v2}, Lcom/cloud/hisavana/sdk/t2;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v0, :cond_9

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    :cond_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v0, :cond_a

    const v1, -0x878788

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    :cond_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_b
    return-void
.end method

.method private final j()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "adBean"

    if-lt v1, v2, :cond_0

    const-class v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0, v3, v1}, Lcom/cloud/hisavana/sdk/common/activity/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    :goto_0
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_1
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e:Ljava/lang/String;

    const-string v1, "observerId"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "triggerTs"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->z:J

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/util/b;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->g:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v3, "adMediaType is INVALID_TYPE"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADMEDIATYPE_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->U()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->Y()V

    return-void

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_6

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_MATERIAL_STYLE_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_7
    :goto_3
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void
.end method

.method private final j0()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->ad_disclaimer_view:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/cloud/hisavana/sdk/common/activity/e;

    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/common/activity/e;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setListener(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView$b;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/f;

    invoke-direct {v2, v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/f;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private final k(F)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/o0;->b(Landroid/widget/ImageView;F)V

    :cond_0
    return-void
.end method

.method public static final synthetic k0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u0()V

    return-void
.end method

.method private final l(J)V
    .locals 5

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B:I

    const/4 v2, 0x0

    if-lez v1, :cond_3

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c:J

    sub-long/2addr v3, p1

    long-to-float p1, v3

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    int-to-float p2, v1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private final l0()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v1, "getApplicationContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;

    invoke-direct {v2, v0, p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;-><init>(Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/f4;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    return-void
.end method

.method private static final m(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    const-string v0, "$container"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget-object v0, p1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v1

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/f0;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/f0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2, p0}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    iget-object p0, p1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic m0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v0()V

    return-void
.end method

.method public static final synthetic n(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->U()V

    return-void
.end method

.method private final n0()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v2, "rewarded adBean is null"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->g0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->p0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i0()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j0()V

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/manager/a;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static final synthetic o(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->E:F

    return-void
.end method

.method public static final synthetic o0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h()V

    return-void
.end method

.method public static final synthetic p(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l(J)V

    return-void
.end method

.method private final p0()V
    .locals 8

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_volume:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getVideoVolume()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k(F)V

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v4

    if-ne v4, v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v4, Lcom/cloud/hisavana/sdk/common/activity/g;

    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/activity/g;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_chronometer:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B(J)V

    :cond_2
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v4, Lcom/cloud/hisavana/sdk/common/activity/h;

    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/common/activity/h;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCloseDelayTime()I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v5

    if-ne v5, v2, :cond_6

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getDuration()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v4

    :goto_2
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current close delay time duration is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B:I

    if-lez v4, :cond_9

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q0()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getCountdownRemainDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l(J)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v4, "current close delay time is 0 or video or image is null, do not count down."

    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_b
    :goto_5
    return-void
.end method

.method private static final q(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/N0;->k(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method private final q0()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->getMediaResource()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2
.end method

.method public static final synthetic r(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private final r0()V
    .locals 7

    const/16 v0, 0xbbd

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v2

    goto/16 :goto_6

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v3

    :goto_3
    instance-of v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_6

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput-object v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    :cond_6
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e0()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v3

    :cond_8
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-nez v2, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v2, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    :goto_5
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    new-instance v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v3, "interactive file not exists "

    invoke-direct {v2, v0, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_6
    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_d
    :goto_7
    return-void
.end method

.method private static final s(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->isTimeUp()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->pause()J

    :cond_2
    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final s0()V
    .locals 5

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$f;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    const/4 v4, 0x2

    invoke-static {v0, v2, v4, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->NO_MAIN_IMG_DATA_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    :cond_2
    return-void
.end method

.method public static final synthetic t(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void
.end method

.method private final t0()V
    .locals 3

    sget-object v0, Lcom/cloud/hisavana/sdk/v2;->a:Lcom/cloud/hisavana/sdk/v2$a;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/v2$a;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l0()V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :cond_3
    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->NO_MAIN_VIDEO_DATA_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void
.end method

.method public static final synthetic u(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method

.method private final u0()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setAlreadyMeasure(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->z:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTriggerShowSpend(J)V

    :goto_0
    const-string v0, "_show"

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getRewardDuration()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b:I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->c:J

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0, v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    invoke-direct {p0, v2, v3}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->B(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/P;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    sget-object v1, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAdCreativeId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getCodeSeatId(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/cloud/hisavana/sdk/Z;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setShowNum(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/c0;->F()Lcom/cloud/hisavana/sdk/c0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/c0;->q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_4
    :goto_3
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_hollow_rounded_rect:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void
.end method

.method private final v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    const-string v0, "_error"

    invoke-direct {p0, v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final v0()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->s:Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->q:Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->r:Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/cloud/hisavana/sdk/m0;->a:Lcom/cloud/hisavana/sdk/m0$a;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/x3;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/G;->v()Lcom/cloud/hisavana/sdk/J0;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->main_layout:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/cloud/hisavana/sdk/m0$a;->a(Lcom/cloud/hisavana/sdk/J0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method

.method private final w(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->seekTo(J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v2, "-----------> video set media data."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "http"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->getVideoVolume()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZZ)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->setCompanionUrl(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private final w0()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->pause()J

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPaused(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------> onPause "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/o0;->h()V

    :cond_3
    return-void
.end method

.method private final x(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/cloud/hisavana/sdk/b2;->a:Lcom/cloud/hisavana/sdk/b2;

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->f:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/cloud/hisavana/sdk/b2;->d(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/v;

    new-instance v2, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$i;

    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$i;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-direct {v0, p0, v2}, Lcom/cloud/hisavana/sdk/common/util/v;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/v;->h(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/cloud/hisavana/sdk/common/util/v;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/v;->j(Z)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setShowRuDialog(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showRuDialog error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static final synthetic z(Ljava/lang/ref/WeakReference;)V
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final V()Lcom/cloud/hisavana/sdk/o0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->tickComplete(Landroid/widget/Chronometer;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->C:Lcom/cloud/hisavana/sdk/o0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/o0;->l()V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v1, "pslink half setClickType, click_install"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v1

    :cond_5
    const/4 p1, 0x1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    :goto_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->a:Ljava/lang/String;

    const-string v1, "pslink half setClickType, click_img"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public a(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    if-nez v0, :cond_0

    new-instance v0, Le7/i;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Le7/i;-><init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$g;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)V

    invoke-virtual {v0, v1}, Le7/i;->h(Le7/i$a;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Le7/i;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const-string v0, "getDecorView(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->getDownX()F

    move-result v1

    float-to-int v1, v1

    move v6, v1

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;->getDownY()F

    move-result p1

    float-to-int p1, p1

    move v7, p1

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Le7/i;->j(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;II)V

    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->x:Z

    return-void
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->t:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$c;-><init>(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->H(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->L(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->G(Z)V

    return-void
.end method

.method public f()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->pauseCountdown()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setCountdownRemainDuration(J)V

    invoke-virtual {p1}, Landroid/widget/Chronometer;->stop()V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->Y()V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/v;->l()V

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->A:Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/util/v;->l()V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->j()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->release()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->k:Lcom/cloud/hisavana/sdk/common/util/HSChronometer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->u:Lcom/cloud/hisavana/sdk/common/util/v;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->v:Lcom/cloud/hisavana/sdk/common/util/v;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->m:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->n:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->o:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->D:Le7/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->w0()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->h()V

    return-void
.end method
