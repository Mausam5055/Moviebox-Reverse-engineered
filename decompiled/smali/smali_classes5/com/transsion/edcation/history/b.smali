.class public final synthetic Lcom/transsion/edcation/history/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/edcation/history/EducationHistoryAdapter;

.field public final synthetic b:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/edcation/history/b;->a:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    iput-object p2, p0, Lcom/transsion/edcation/history/b;->b:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/edcation/history/b;->a:Lcom/transsion/edcation/history/EducationHistoryAdapter;

    iget-object v1, p0, Lcom/transsion/edcation/history/b;->b:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    invoke-static {v0, v1, p1}, Lcom/transsion/edcation/history/EducationHistoryAdapter;->B1(Lcom/transsion/edcation/history/EducationHistoryAdapter;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroid/view/View;)V

    return-void
.end method
