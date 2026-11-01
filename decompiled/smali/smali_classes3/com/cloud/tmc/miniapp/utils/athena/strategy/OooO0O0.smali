.class public final Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;


# instance fields
.field public final OooO00o:Landroid/content/Context;

.field public final OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:I

.field public final OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;",
            ">;I",
            "Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;",
            ")V"
        }
    .end annotation

    const-string v0, "steps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "athenaReportBean"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    iput p4, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o(Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;
    .locals 8

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0O0:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    iget p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;

    add-int/lit8 v6, p1, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0OO:Ljava/util/List;

    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0Oo:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    return-object p1
.end method
