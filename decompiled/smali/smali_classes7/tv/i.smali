.class public final Ltv/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/i$a;
    }
.end annotation


# instance fields
.field private final a:Ltv/i$a;


# direct methods
.method public constructor <init>(Ltv/i$a;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/i;->a:Ltv/i$a;

    return-void
.end method

.method public static synthetic b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Ltv/i;->a(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 12

    move-object v0, p0

    const-string v1, "moduleName"

    move-object v4, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    iget-object v1, v0, Ltv/i;->a:Ltv/i$a;

    invoke-interface {v1}, Ltv/i$a;->d()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Ltv/i;->a:Ltv/i$a;

    invoke-interface {v1}, Ltv/i$a;->f()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Ltv/i;->a:Ltv/i$a;

    invoke-interface {v1}, Ltv/i$a;->e()Ljava/lang/String;

    move-result-object v9

    const-string v3, "/ugc_video/immersive_detail"

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p4

    move-object v10, p3

    move-object/from16 v11, p5

    invoke-virtual/range {v2 .. v11}, Lcom/transsion/ugcvideodetail/hepler/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method
