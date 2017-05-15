class Pricing extends React.Component {

    loadBulletPoints(bulletPoints){
        const result = bulletPoints.map((number) =>
            <li><i className={"fa fa-square"}></i> {number}</li>
        );
        return(
            <div className={"bulletPoints"}>
                <ul>
                    {result}
                </ul>
            </div>
        );
    }

    render() {
        return(
            <div className={"card-wrapper col-md-6 wow fadeInRight animated"}>
                <div className={"pricing card card-5"}>
                    <div className={"plan-header text-center"}>
                        <div className={"popular-tag"}>{this.props.title}</div>
                        <h2 className={"plan-title"}></h2>
                        <h3 className={"price-tag"}>{this.props.price}$</h3>
                    </div>
                    {this.loadBulletPoints(this.props.bulletPoints)}
                </div>
            </div>
        )
    }
}