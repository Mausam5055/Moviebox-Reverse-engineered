.class Lr7/e$b;
.super Lr7/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr7/e$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p3, p0, Lr7/e$b;->c:Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-boolean p2, p0, Lr7/e$b;->c:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr7/e$d;->a:Ljava/lang/String;

    invoke-static {p4}, Lq7/c;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lr7/e$d;->a:Ljava/lang/String;

    invoke-static {p4}, Lq7/c;->b(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
