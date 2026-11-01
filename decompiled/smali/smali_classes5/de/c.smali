.class public final synthetic Lde/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lcom/hisavana/mediation/bridge/MediationJsBridge;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/MediationJsBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lde/c;->b:Ljava/lang/String;

    iput p3, p0, Lde/c;->c:I

    iput-object p4, p0, Lde/c;->d:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    iput-object p5, p0, Lde/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 5

    iget-object v0, p0, Lde/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lde/c;->b:Ljava/lang/String;

    iget v2, p0, Lde/c;->c:I

    iget-object v3, p0, Lde/c;->d:Lcom/hisavana/mediation/bridge/MediationJsBridge;

    iget-object v4, p0, Lde/c;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hisavana/mediation/bridge/MediationJsBridge;->a(Ljava/lang/String;Ljava/lang/String;ILcom/hisavana/mediation/bridge/MediationJsBridge;Ljava/lang/String;)V

    return-void
.end method
