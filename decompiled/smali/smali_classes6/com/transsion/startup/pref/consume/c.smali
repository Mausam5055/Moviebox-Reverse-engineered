.class public final Lcom/transsion/startup/pref/consume/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/startup/pref/consume/c;

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/startup/pref/consume/c;

    invoke-direct {v0}, Lcom/transsion/startup/pref/consume/c;-><init>()V

    sput-object v0, Lcom/transsion/startup/pref/consume/c;->a:Lcom/transsion/startup/pref/consume/c;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->f:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->b:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->c:J

    return-wide v0
.end method

.method public static final synthetic d(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/startup/pref/consume/c;->j:Z

    return-void
.end method

.method public static final synthetic e(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/startup/pref/consume/c;->i:Z

    return-void
.end method

.method public static final synthetic f(J)V
    .locals 0

    sput-wide p0, Lcom/transsion/startup/pref/consume/c;->f:J

    return-void
.end method

.method public static final synthetic g(J)V
    .locals 0

    sput-wide p0, Lcom/transsion/startup/pref/consume/c;->c:J

    return-void
.end method

.method private final n()V
    .locals 20

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-wide v2, Lcom/transsion/startup/pref/consume/c;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sget-wide v6, Lcom/transsion/startup/pref/consume/c;->b:J

    sub-long/2addr v2, v6

    goto :goto_0

    :cond_0
    move-wide v2, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    move-result-wide v6

    sget-wide v8, Lcom/transsion/startup/pref/consume/c;->f:J

    cmp-long v10, v8, v4

    if-lez v10, :cond_1

    sget-wide v10, Lcom/transsion/startup/pref/consume/c;->e:J

    cmp-long v12, v10, v4

    if-lez v12, :cond_1

    :goto_1
    sub-long v10, v8, v10

    goto :goto_2

    :cond_1
    cmp-long v10, v8, v4

    if-lez v10, :cond_2

    sget-wide v10, Lcom/transsion/startup/pref/consume/c;->c:J

    cmp-long v12, v10, v4

    if-lez v12, :cond_2

    goto :goto_1

    :cond_2
    move-wide v10, v4

    :goto_2
    sget-wide v12, Lcom/transsion/startup/pref/consume/c;->g:J

    cmp-long v14, v12, v4

    if-lez v14, :cond_3

    cmp-long v14, v8, v4

    if-lez v14, :cond_3

    sub-long v4, v12, v8

    :cond_3
    sget-wide v8, Lcom/transsion/startup/pref/consume/c;->b:J

    sub-long/2addr v12, v8

    sub-long v8, v12, v6

    sget-boolean v14, Lcom/transsion/startup/pref/consume/c;->m:Z

    if-eqz v14, :cond_4

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    const-string v6, "\u65e0\u5e7f\u544a"

    :goto_3
    sget-object v14, Llg/a;->a:Llg/a$a;

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%6d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "format(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v15, v1, [Ljava/lang/Object;

    aput-object v6, v15, v0

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v15, "%6s"

    invoke-static {v15, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v10, v11, v0

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v5, v11, v0

    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v0

    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n            |\n            |\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2557\n            |\u2551                    \ud83d\ude80 \u542f\u52a8\u6027\u80fd\u5206\u6790\u62a5\u544a                        \u2551\n            |\u2560\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2563\n            |\u2551 \u9636\u6bb5\u5206\u89e3\uff1a                                                    \u2551\n            |\u2551   [1] \u8fdb\u7a0b\u542f\u52a8 \u2192 Splash\u9996\u5e27:        "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms              \u2551\n            |\u2551   [2] \u5e7f\u544a\u7b49\u5f85\u65f6\u957f:                 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms  (\u5df2\u6392\u9664)    \u2551\n            |\u2551   [3] \u5e7f\u544a\u7ed3\u675f \u2192 MainActivity\u9996\u5e27:  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms              \u2551\n            |\u2551   [4] MainActivity\u9996\u5e27 \u2192 \u6570\u636e\u52a0\u8f7d:  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms              \u2551\n            |\u2560\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2563\n            |\u2551 \u6c47\u603b\uff1a                                                        \u2551\n            |\u2551   \u603b\u8017\u65f6 (\u542b\u5e7f\u544a\u7b49\u5f85):             "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ms              \u2551\n            |\u2551   \u771f\u5b9e\u542f\u52a8\u65f6\u95f4 (TTFD):             "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ms              \u2551\n            |\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u255d\n        "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "AppStartup"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final p()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->c:J

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->d:J

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->e:J

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->f:J

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->g:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->i:Z

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->j:Z

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->k:Z

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->m:Z

    return-void
.end method


# virtual methods
.method public final h()J
    .locals 6

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->m:Z

    if-eqz v0, :cond_0

    sget-wide v1, Lcom/transsion/startup/pref/consume/c;->e:J

    sget-wide v3, Lcom/transsion/startup/pref/consume/c;->d:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/startup/pref/consume/c;->d:J

    sub-long v1, v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public final i()Lcom/transsion/startup/pref/consume/b;
    .locals 13

    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    move-result-wide v3

    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->g:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    sget-wide v7, Lcom/transsion/startup/pref/consume/c;->b:J

    sub-long/2addr v0, v7

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :goto_0
    new-instance v12, Lcom/transsion/startup/pref/consume/b;

    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->c:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    sget-wide v9, Lcom/transsion/startup/pref/consume/c;->b:J

    sub-long/2addr v0, v9

    move-wide v1, v0

    goto :goto_1

    :cond_1
    move-wide v1, v5

    :goto_1
    sget-wide v9, Lcom/transsion/startup/pref/consume/c;->f:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_2

    sget-wide v5, Lcom/transsion/startup/pref/consume/c;->b:J

    sub-long/2addr v9, v5

    sub-long/2addr v9, v3

    move-wide v5, v9

    :cond_2
    sub-long v9, v7, v3

    sget-boolean v11, Lcom/transsion/startup/pref/consume/c;->m:Z

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/transsion/startup/pref/consume/b;-><init>(JJJJJZ)V

    return-object v12
.end method

.method public final j()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/metrics/a;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->b:J

    invoke-direct {p0}, Lcom/transsion/startup/pref/consume/c;->p()V

    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-wide v0, Lcom/transsion/startup/pref/consume/c;->b:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udccd [Phase 0] App Process Started at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AppStartup"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final k(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/startup/pref/consume/c$a;

    invoke-direct {v1, p1}, Lcom/transsion/startup/pref/consume/c$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/startup/pref/consume/c$b;

    invoke-direct {v1, p1}, Lcom/transsion/startup/pref/consume/c$b;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 8

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->d:J

    const/4 v2, 0x1

    sput-boolean v2, Lcom/transsion/startup/pref/consume/c;->l:Z

    sput-boolean v2, Lcom/transsion/startup/pref/consume/c;->m:Z

    sget-wide v2, Lcom/transsion/startup/pref/consume/c;->b:J

    sub-long/2addr v0, v2

    sget-object v2, Llg/a;->a:Llg/a$a;

    sget-wide v3, Lcom/transsion/startup/pref/consume/c;->d:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u23f8\ufe0f [Phase 2] Paused for Ad at: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (\u5df2\u8fd0\u884c "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AppStartup"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final o(Landroid/app/Activity;)V
    .locals 14

    const/4 p1, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/transsion/startup/pref/consume/c;->h:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/transsion/startup/pref/consume/c;->k:Z

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/transsion/startup/pref/consume/c;->g:J

    sget-wide v3, Lcom/transsion/startup/pref/consume/c;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    move-result-wide v3

    sub-long v5, v1, v3

    sget-object v13, Llg/a;->a:Llg/a$a;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "AppStartup"

    const-string v9, "\u2705 [Phase 4] TTFD (Full Display):"

    const/4 v10, 0x0

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   \u251c\u2500 \u603b\u8017\u65f6 (\u542b\u5e7f\u544a\u7b49\u5f85): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v8, "AppStartup"

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   \u251c\u2500 \u5e7f\u544a\u7b49\u5f85\u65f6\u957f: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v8, "AppStartup"

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   \u2514\u2500 \u771f\u5b9e\u542f\u52a8\u65f6\u95f4 (TTFD): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v8, "AppStartup"

    invoke-static/range {v7 .. v12}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/startup/pref/consume/c;->n()V

    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->i()Lcom/transsion/startup/pref/consume/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "splash_ttid"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_wait_duration"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "main_activity_ttid"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "total_ttfd"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "real_ttfd"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    invoke-virtual {v1}, Lcom/transsion/startup/pref/consume/b;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v7, "has_ad"

    invoke-static {v7, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x6

    new-array v7, v7, [Lkotlin/Pair;

    aput-object v2, v7, v0

    aput-object v3, v7, p1

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    const/4 v2, 0x4

    aput-object v6, v7, v2

    const/4 v2, 0x5

    aput-object v1, v7, v2

    invoke-static {v7}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lhj/i;->a:Lhj/i;

    const-string v3, "app_startup_stat_ab_new"

    const-string v4, "app_perf"

    invoke-virtual {v2, v3, v4, v1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-boolean p1, Lcom/transsion/startup/pref/consume/c;->k:Z

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final q()V
    .locals 8

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->e:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    invoke-virtual {p0}, Lcom/transsion/startup/pref/consume/c;->h()J

    move-result-wide v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u25b6\ufe0f [Phase 2] Resumed after Ad, Wait Duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms (\u5e7f\u544a\u7b49\u5f85\u65f6\u95f4\uff0c\u5df2\u4ece\u7edf\u8ba1\u4e2d\u6392\u9664)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AppStartup"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 7

    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    if-eqz v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AppStartup"

    const-string v3, "\u23ed\ufe0f [Phase 2] Ad Skipped - No ad shown, resuming timer"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->l:Z

    sput-boolean v0, Lcom/transsion/startup/pref/consume/c;->m:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->d:J

    sput-wide v0, Lcom/transsion/startup/pref/consume/c;->e:J

    return-void
.end method
