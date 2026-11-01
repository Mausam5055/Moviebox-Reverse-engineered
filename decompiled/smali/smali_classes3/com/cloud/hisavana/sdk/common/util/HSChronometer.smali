.class public final Lcom/cloud/hisavana/sdk/common/util/HSChronometer;
.super Landroid/widget/Chronometer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u001c\u0018\u00002\u00020\u0001:\u0001%B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0001H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010!\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008!\u0010\u000eJ\r\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\'\u001a\u00020\u00168\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010)\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010(R\u0016\u0010*\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010(R\u0016\u0010-\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010,R$\u00102\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010&\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R$\u00106\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010&\u001a\u0004\u00084\u0010/\"\u0004\u00085\u00101R$\u0010=\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<\u00a8\u0006>"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;",
        "Landroid/widget/Chronometer;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "duration",
        "",
        "c",
        "(J)V",
        "chronometer",
        "b",
        "(Landroid/widget/Chronometer;)V",
        "e",
        "()V",
        "f",
        "tickComplete",
        "",
        "countdownText",
        "(J)Ljava/lang/String;",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;",
        "listener",
        "startCountDown",
        "(ILcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V",
        "startCountdown",
        "(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V",
        "pauseCountdown",
        "()J",
        "resumeCountdown",
        "",
        "isTimeUp",
        "()Z",
        "a",
        "Ljava/lang/String;",
        "tag",
        "J",
        "countdownDuration",
        "remainingDuration",
        "d",
        "Z",
        "isRunning",
        "getTickStringFormat",
        "()Ljava/lang/String;",
        "setTickStringFormat",
        "(Ljava/lang/String;)V",
        "tickStringFormat",
        "g",
        "getFinishedString",
        "setFinishedString",
        "finishedString",
        "h",
        "Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;",
        "getTickListener",
        "()Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;",
        "setTickListener",
        "(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V",
        "tickListener",
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


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "HiChronometer"

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;Landroid/widget/Chronometer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;Landroid/widget/Chronometer;)V

    return-void
.end method

.method private final b(Landroid/widget/Chronometer;)V
    .locals 6

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----> onChronometerTick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-interface {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onFinish()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f()V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz p1, :cond_4

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-interface {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final c(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    new-instance p1, Lcom/cloud/hisavana/sdk/common/util/o;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/common/util/o;-><init>(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V

    invoke-virtual {p0, p1}, Landroid/widget/Chronometer;->setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    invoke-virtual {p0}, Landroid/widget/Chronometer;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final d(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;Landroid/widget/Chronometer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b(Landroid/widget/Chronometer;)V

    return-void
.end method

.method private final e()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->countdownText(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final countdownText(J)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    long-to-double p1, p1

    const/16 v1, 0x3e8

    int-to-double v1, v1

    div-double/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$string;->reward_before_tip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getFinishedString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getTickListener()Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    return-object v0
.end method

.method public final getTickStringFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final isTimeUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e:Z

    return v0
.end method

.method public final pauseCountdown()J
    .locals 6

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/Chronometer;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/widget/Chronometer;->getBase()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseCountdown -----> remain countdownDuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onFinish()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz v0, :cond_4

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    :cond_4
    :goto_1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    return-wide v0
.end method

.method public final resumeCountdown(J)V
    .locals 5

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeCountdown -----> resume countdownDuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c(J)V

    :cond_1
    return-void
.end method

.method public final setFinishedString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    return-void
.end method

.method public final setTickListener(Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    return-void
.end method

.method public final setTickStringFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->f:Ljava/lang/String;

    return-void
.end method

.method public final startCountDown(ILcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->startCountdown(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V

    return-void
.end method

.method public final startCountdown(JLcom/cloud/hisavana/sdk/common/util/HSChronometer$a;)V
    .locals 3

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCountDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c(J)V

    return-void
.end method

.method public final tickComplete(Landroid/widget/Chronometer;)V
    .locals 2

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->e()V

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->c:J

    invoke-interface {p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onTick(J)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->h:Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer$a;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
