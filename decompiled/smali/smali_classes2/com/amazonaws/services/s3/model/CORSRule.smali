.class public Lcom/amazonaws/services/s3/model/CORSRule;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/model/CORSRule$AllowedMethods;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:I

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->f:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->b:Ljava/util/List;

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->c:Ljava/util/List;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->e:Ljava/util/List;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->a:Ljava/lang/String;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/amazonaws/services/s3/model/CORSRule;->d:I

    return-void
.end method
