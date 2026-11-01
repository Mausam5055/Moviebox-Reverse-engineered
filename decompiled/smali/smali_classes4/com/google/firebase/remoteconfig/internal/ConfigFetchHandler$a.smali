.class public Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Lcom/google/firebase/remoteconfig/internal/f;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->a:Ljava/util/Date;

    iput p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->b:I

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->c:Lcom/google/firebase/remoteconfig/internal/f;

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/Date;Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
    .locals 3

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
    .locals 3

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->h()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
    .locals 3

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public d()Lcom/google/firebase/remoteconfig/internal/f;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->c:Lcom/google/firebase/remoteconfig/internal/f;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->b:I

    return v0
.end method
