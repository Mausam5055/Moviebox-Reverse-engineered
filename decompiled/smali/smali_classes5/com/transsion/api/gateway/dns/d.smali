.class public Lcom/transsion/api/gateway/dns/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lcom/transsion/api/gateway/dns/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->c:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->d:I

    iput-boolean v0, p0, Lcom/transsion/api/gateway/dns/d;->e:Z

    const/16 v0, 0x10

    new-array v1, v0, [C

    const/16 v2, 0x66

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    iget-object v0, p1, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    iget v0, p1, Lcom/transsion/api/gateway/dns/d;->a:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->a:I

    iget v0, p1, Lcom/transsion/api/gateway/dns/d;->c:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->c:I

    iget v0, p1, Lcom/transsion/api/gateway/dns/d;->d:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->d:I

    iget-boolean v0, p1, Lcom/transsion/api/gateway/dns/d;->e:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/dns/d;->e:Z

    iget-object v0, p1, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->c:I

    iput v0, p0, Lcom/transsion/api/gateway/dns/d;->d:I

    iput-boolean v0, p0, Lcom/transsion/api/gateway/dns/d;->e:Z

    const/16 v0, 0x10

    new-array v1, v0, [C

    const/16 v2, 0x66

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/transsion/api/gateway/dns/d;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/api/gateway/dns/d;->g:Ljava/math/BigInteger;

    iput-object p1, p0, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/api/gateway/dns/d;->a:I

    return-void
.end method
