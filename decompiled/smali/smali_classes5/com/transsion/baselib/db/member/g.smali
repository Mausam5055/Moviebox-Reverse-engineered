.class public final Lcom/transsion/baselib/db/member/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/baselib/db/member/MemberResolutionDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/baselib/db/member/g$a;

    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/member/g$a;-><init>(Lcom/transsion/baselib/db/member/g;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/member/g;->b:Landroidx/room/g;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/baselib/db/member/g;->q(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/member/MemberResolutionBean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/member/g;->o(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/member/MemberResolutionBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/baselib/db/member/g;Lcom/transsion/baselib/db/member/MemberResolutionBean;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/member/g;->n(Lcom/transsion/baselib/db/member/MemberResolutionBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(ZLjava/lang/String;IILz3/b;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/member/g;->r(ZLjava/lang/String;IILz3/b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/baselib/db/member/g;->s(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(ZLjava/lang/String;IILz3/b;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/member/g;->p(ZLjava/lang/String;IILz3/b;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static m()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic n(Lcom/transsion/baselib/db/member/MemberResolutionBean;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic o(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/member/MemberResolutionBean;
    .locals 11

    const-string v0, "\n        SELECT * FROM member_resolution\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n        LIMIT 1\n    "

    invoke-interface {p3, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :try_start_0
    invoke-interface {p3, v0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    invoke-interface {p3, v0, p0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x2

    int-to-long v1, p1

    invoke-interface {p3, p0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x3

    int-to-long p1, p2

    invoke-interface {p3, p0, p1, p2}, Lz3/e;->c(IJ)V

    const-string p0, "subjectId"

    invoke-static {p3, p0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p0

    const-string p1, "ep"

    invoke-static {p3, p1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p1

    const-string p2, "se"

    invoke-static {p3, p2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p2

    const-string v1, "vipResolutionTip"

    invoke-static {p3, v1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v1

    const-string v2, "isUnlock"

    invoke-static {p3, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3}, Lz3/e;->A0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    invoke-interface {p3, p0}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    invoke-interface {p3, p0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p0

    move-object v6, p0

    :goto_1
    invoke-interface {p3, p1}, Lz3/e;->getLong(I)J

    move-result-wide p0

    long-to-int v7, p0

    invoke-interface {p3, p2}, Lz3/e;->getLong(I)J

    move-result-wide p0

    long-to-int v8, p0

    invoke-interface {p3, v1}, Lz3/e;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, v4

    goto :goto_2

    :cond_2
    invoke-interface {p3, v1}, Lz3/e;->getLong(I)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2
    const/4 p1, 0x0

    if-nez p0, :cond_3

    move-object v9, v4

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_4

    move p0, v0

    goto :goto_3

    :cond_4
    move p0, p1

    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v9, p0

    :goto_4
    invoke-interface {p3, v2}, Lz3/e;->isNull(I)Z

    move-result p0

    if-eqz p0, :cond_5

    move-object p0, v4

    goto :goto_5

    :cond_5
    invoke-interface {p3, v2}, Lz3/e;->getLong(I)J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_5
    if-nez p0, :cond_6

    :goto_6
    move-object v10, v4

    goto :goto_8

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_7

    :cond_7
    move v0, p1

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_6

    :goto_8
    new-instance v4, Lcom/transsion/baselib/db/member/MemberResolutionBean;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/transsion/baselib/db/member/MemberResolutionBean;-><init>(Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    invoke-interface {p3}, Lz3/e;->close()V

    return-object v4

    :goto_9
    invoke-interface {p3}, Lz3/e;->close()V

    throw p0
.end method

.method private static synthetic p(ZLjava/lang/String;IILz3/b;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "\n        UPDATE member_resolution\n        SET isUnlock = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    "

    invoke-interface {p4, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p1, :cond_0

    invoke-interface {v0, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0, p0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x3

    int-to-long p1, p2

    invoke-interface {v0, p0, p1, p2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x4

    int-to-long p1, p3

    invoke-interface {v0, p0, p1, p2}, Lz3/e;->c(IJ)V

    invoke-interface {v0}, Lz3/e;->A0()Z

    invoke-static {p4}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {v0}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic q(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionDao$DefaultImpls;->a(Lcom/transsion/baselib/db/member/MemberResolutionDao;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic r(ZLjava/lang/String;IILz3/b;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "\n        UPDATE member_resolution\n        SET vipResolutionTip = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    "

    invoke-interface {p4, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v0

    const/4 v1, 0x1

    int-to-long v2, p0

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p1, :cond_0

    invoke-interface {v0, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v0, p0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x3

    int-to-long p1, p2

    invoke-interface {v0, p0, p1, p2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x4

    int-to-long p1, p3

    invoke-interface {v0, p0, p1, p2}, Lz3/e;->c(IJ)V

    invoke-interface {v0}, Lz3/e;->A0()Z

    invoke-static {p4}, Landroidx/room/util/j;->b(Lz3/b;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {v0}, Lz3/e;->close()V

    throw p0
.end method

.method private synthetic s(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionDao$DefaultImpls;->b(Lcom/transsion/baselib/db/member/MemberResolutionDao;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    new-instance v7, Lcom/transsion/baselib/db/member/b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/baselib/db/member/b;-><init>(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZ)V

    invoke-static {v0, v7, p5}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/member/a;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/baselib/db/member/a;-><init>(Ljava/lang/String;II)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/member/f;

    invoke-direct {v1, p4, p1, p2, p3}, Lcom/transsion/baselib/db/member/f;-><init>(ZLjava/lang/String;II)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/transsion/baselib/db/member/MemberResolutionBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/member/e;

    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/member/e;-><init>(Lcom/transsion/baselib/db/member/g;Lcom/transsion/baselib/db/member/MemberResolutionBean;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/transsion/baselib/db/member/d;

    invoke-direct {v1, p4, p1, p2, p3}, Lcom/transsion/baselib/db/member/d;-><init>(ZLjava/lang/String;II)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    new-instance v7, Lcom/transsion/baselib/db/member/c;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/baselib/db/member/c;-><init>(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZ)V

    invoke-static {v0, v7, p5}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
