.class final Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Ljava/util/Map;

.field final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->a:Z

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->b:Z

    iput p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->c:I

    iput-object p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->e:Ljava/util/Map;

    iput-object p6, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->a:Z

    iget-boolean v2, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->a:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->b:Z

    iget-boolean v2, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->b:Z

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->c:I

    iget v2, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->c:I

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$c;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
