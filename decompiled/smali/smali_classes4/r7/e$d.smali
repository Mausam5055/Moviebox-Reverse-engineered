.class abstract Lr7/e$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7/e$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lr7/e$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
