.class public Lcom/transsion/json/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/json/p;


# instance fields
.field private final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/json/s;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/s;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return p3
.end method

.method public a(Ljava/lang/String;)Lcom/transsion/json/p;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/s;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public b(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/s;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/json/s;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/s;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
