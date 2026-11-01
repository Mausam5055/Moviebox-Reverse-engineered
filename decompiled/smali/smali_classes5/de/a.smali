.class public final synthetic Lde/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:D

.field public final synthetic h:Ljava/util/List;

.field public final synthetic i:Lcom/hisavana/mediation/bridge/MediationJsBridge;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;Lcom/hisavana/mediation/bridge/MediationJsBridge;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/a;->a:Ljava/lang/String;

    iput p2, p0, Lde/a;->b:I

    iput-object p3, p0, Lde/a;->c:Ljava/lang/String;

    iput p4, p0, Lde/a;->d:I

    iput p5, p0, Lde/a;->e:I

    iput p6, p0, Lde/a;->f:I

    iput-wide p7, p0, Lde/a;->g:D

    iput-object p9, p0, Lde/a;->h:Ljava/util/List;

    iput-object p10, p0, Lde/a;->i:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 10

    iget-object v0, p0, Lde/a;->a:Ljava/lang/String;

    iget v1, p0, Lde/a;->b:I

    iget-object v2, p0, Lde/a;->c:Ljava/lang/String;

    iget v3, p0, Lde/a;->d:I

    iget v4, p0, Lde/a;->e:I

    iget v5, p0, Lde/a;->f:I

    iget-wide v6, p0, Lde/a;->g:D

    iget-object v8, p0, Lde/a;->h:Ljava/util/List;

    iget-object v9, p0, Lde/a;->i:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    invoke-static/range {v0 .. v9}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->a(Ljava/lang/String;ILjava/lang/String;IIIDLjava/util/List;Lcom/hisavana/mediation/bridge/MediationJsBridge;)V

    return-void
.end method
