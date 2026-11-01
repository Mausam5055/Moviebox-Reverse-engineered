.class public final Lcom/tn/tranpay/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/e$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/tn/tranpay/e$a;

.field private static d:Lcom/tn/tranpay/e;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tn/tranpay/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/tranpay/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    new-instance v0, Lcom/tn/tranpay/e;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/tn/tranpay/e;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/tranpay/e;->d:Lcom/tn/tranpay/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/tn/tranpay/e;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/tn/tranpay/e;->a:Z

    iput p2, p0, Lcom/tn/tranpay/e;->b:I

    return-void
.end method

.method public synthetic constructor <init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, -0xe04201

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tn/tranpay/e;-><init>(ZI)V

    return-void
.end method

.method public static final synthetic a()Lcom/tn/tranpay/e;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/e;->d:Lcom/tn/tranpay/e;

    return-object v0
.end method

.method public static final synthetic b(Lcom/tn/tranpay/e;)V
    .locals 0

    sput-object p0, Lcom/tn/tranpay/e;->d:Lcom/tn/tranpay/e;

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/tranpay/e;->a:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tn/tranpay/e;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tn/tranpay/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tn/tranpay/e;

    iget-boolean v1, p0, Lcom/tn/tranpay/e;->a:Z

    iget-boolean v3, p1, Lcom/tn/tranpay/e;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/tn/tranpay/e;->b:I

    iget p1, p1, Lcom/tn/tranpay/e;->b:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/tn/tranpay/e;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/tn/tranpay/e;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/tn/tranpay/e;->a:Z

    iget v1, p0, Lcom/tn/tranpay/e;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranPayTheme(showLoadingWhenLaunched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", tintColor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
