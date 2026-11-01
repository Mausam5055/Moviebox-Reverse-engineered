.class public Ln00/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/transsion/sdk/oneid/data/GroupFpInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/sdk/oneid/data/GroupFpInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln00/g;->a:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    return-void
.end method


# virtual methods
.method public a()Ln00/i;
    .locals 3

    invoke-static {}, Ln00/l;->d()Ln00/l;

    move-result-object v0

    invoke-virtual {v0}, Ln00/l;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln00/g;->a:Lcom/transsion/sdk/oneid/data/GroupFpInfo;

    invoke-virtual {v1}, Lcom/transsion/sdk/oneid/data/OneBaseInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln00/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ln00/i;

    move-result-object v0

    return-object v0
.end method
