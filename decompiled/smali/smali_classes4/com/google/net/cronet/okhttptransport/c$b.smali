.class abstract Lcom/google/net/cronet/okhttptransport/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/net/cronet/okhttptransport/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/google/net/cronet/okhttptransport/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/net/cronet/okhttptransport/c$b$a;

    invoke-direct {v0}, Lcom/google/net/cronet/okhttptransport/c$b$a;-><init>()V

    sput-object v0, Lcom/google/net/cronet/okhttptransport/c$b;->a:Lcom/google/net/cronet/okhttptransport/c;

    return-void
.end method

.method static synthetic a()Lcom/google/net/cronet/okhttptransport/c;
    .locals 1

    sget-object v0, Lcom/google/net/cronet/okhttptransport/c$b;->a:Lcom/google/net/cronet/okhttptransport/c;

    return-object v0
.end method
