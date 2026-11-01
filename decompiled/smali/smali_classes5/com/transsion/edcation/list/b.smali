.class public final synthetic Lcom/transsion/edcation/list/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/edcation/list/CourseListAdapter;

.field public final synthetic b:Lcom/transsion/edcation/bean/CourseBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/edcation/list/b;->a:Lcom/transsion/edcation/list/CourseListAdapter;

    iput-object p2, p0, Lcom/transsion/edcation/list/b;->b:Lcom/transsion/edcation/bean/CourseBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/edcation/list/b;->a:Lcom/transsion/edcation/list/CourseListAdapter;

    iget-object v1, p0, Lcom/transsion/edcation/list/b;->b:Lcom/transsion/edcation/bean/CourseBean;

    invoke-static {v0, v1, p1}, Lcom/transsion/edcation/list/CourseListAdapter;->B1(Lcom/transsion/edcation/list/CourseListAdapter;Lcom/transsion/edcation/bean/CourseBean;Landroid/view/View;)V

    return-void
.end method
