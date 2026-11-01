.class Lr7/e$a;
.super Lr7/e$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field c:Ljava/lang/String;

.field private d:Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lr7/e$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lr7/e$a$a;

    invoke-direct {p1, p0}, Lr7/e$a$a;-><init>(Lr7/e$a;)V

    iput-object p1, p0, Lr7/e$a;->d:Ljava/lang/ThreadLocal;

    iput-object p3, p0, Lr7/e$a;->c:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad date pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method protected a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p4, p0, Lr7/e$d;->a:Ljava/lang/String;

    iget-object p5, p0, Lr7/e$a;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {p5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/text/SimpleDateFormat;

    new-instance p6, Ljava/util/Date;

    invoke-direct {p6, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p5, p6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
