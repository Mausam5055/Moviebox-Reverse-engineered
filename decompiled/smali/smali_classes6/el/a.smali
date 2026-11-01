.class public final Lel/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/home/bean/HomePreferencesConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/HomePreferencesConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lel/a;->a:I

    iput-object p2, p0, Lel/a;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/home/bean/HomePreferencesConfig;
    .locals 1

    iget-object v0, p0, Lel/a;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lel/a;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lel/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lel/a;

    iget v1, p0, Lel/a;->a:I

    iget v3, p1, Lel/a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lel/a;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    iget-object p1, p1, Lel/a;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lel/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lel/a;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lel/a;->a:I

    iget-object v1, p0, Lel/a;->b:Lcom/transsion/home/bean/HomePreferencesConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HomePreferencesInsertInstruction(position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", config="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
