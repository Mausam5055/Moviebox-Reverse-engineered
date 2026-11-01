.class Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;->a(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/StackTraceElement;

.field final synthetic c:Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;->c:Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;->b:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a$a;->b:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/crashreport/d$a;->b(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    return-void
.end method
