const { getAverageBenefitsReport } = require('../../services/reports/getAverageBenefitsReport');

const renderAverageBenefitsReportView = async (req, res) => {
    try {
        let id = req.query.id;
        let fullname = req.query.fullname;
        let gender = req.query.gender;
        let ethnicity = req.query.ethnicity;
        let plan = req.query.plan;
        let paid = req.query.paid;

        let data = await getAverageBenefitsReport(id, fullname, gender, ethnicity, plan, paid);
        
        res.render(
            "reportAverageBenefitsPage.ejs", 
            {
                data,
                id, 
                fullname, 
                gender,
                ethnicity, 
                plan, 
                paid
            }
        );
        console.log('[System] averageBenefitsReportController.js | Rendered reportAverageBenefitsPage.');
    }
    catch (err) {
        console.log('[System] Error at averageBenefitsReportController.js: ', err);
    }
}

module.exports = {renderAverageBenefitsReportView};