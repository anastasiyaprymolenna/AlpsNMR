% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/to_rDolphin_blood.R
\name{files_to_rDolphin_urine}
\alias{files_to_rDolphin_urine}
\title{Files to rDoplhin (urine)}
\usage{
files_to_rDolphin_urine(nmr_dataset)
}
\arguments{
\item{nmr_dataset}{An \link{nmr_dataset} object}
}
\value{
a list containing:
\itemize{
\item \code{meta_rDolphin}: metadata in rDolphin format,
\item \code{NMR_spectra}: spectra matrix
\item \code{URINE_cell}: ROI template
\item \code{Parameters_cell}: parameters file
}
}
\description{
The function generates the files required by to_rDolphin function.
}
\examples{
\dontrun{
# Set the directory in which rDolphin files will be saved
output_dir_10_rDolphin <- file.path(your_path, "10-rDolphin")
fs::dir_create(output_dir_10_rDolphin)

# Generate the files (for urine)
files_rDolphin = files_to_rDolphin_urine(nmr_dataset_0_10_ppm)

# Save the files
save_files_to_rDolphin(files_rDolphin, output_dir_10_rDolphin)

# Build the rDolphin object. Do not forget to set the directory
setwd(output_dir_10_rDolphin)
rDolphin_object = to_rDolphin("Parameters.csv")

# Visualize your spectra
rDolphin_plot(rDolphin_object)

# Run the main profiling function (it takes a while)
targeted_profiling = Automatic_targeted_profiling(rDolphin_object)

# Save results
save_profiling_output(targeted_profiling, output_dir_10_rDolphin)

save_profiling_plots(output_dir_10_rDolphin, targeted_profiling$final_output,
targeted_profiling$reproducibility_data)

#Additionally, you can run some stats
intensities = targeted_profiling$final_output$intensity
group = as.factor(rDolphin_object$Metadata$type)
model_PLS <- rdCV_PLS_RF(X = intensities, Y = group)
}
}
\seealso{
Other import/export functions: 
\code{\link{Pipelines}},
\code{\link{files_to_rDolphin_blood}()},
\code{\link{files_to_rDolphin_cell}()},
\code{\link{load_and_save_functions}},
\code{\link{nmr_data}()},
\code{\link{nmr_meta_export}()},
\code{\link{nmr_read_bruker_fid}()},
\code{\link{nmr_read_samples}()},
\code{\link{nmr_zip_bruker_samples}()},
\code{\link{save_files_to_rDolphin}()},
\code{\link{save_profiling_output}()},
\code{\link{to_ChemoSpec}()}

Other nmr_dataset_1D functions: 
\code{\link{[.nmr_dataset_1D}()},
\code{\link{computes_peak_width_ppm}()},
\code{\link{file_lister}()},
\code{\link{files_to_rDolphin_blood}()},
\code{\link{files_to_rDolphin_cell}()},
\code{\link{format.nmr_dataset_1D}()},
\code{\link{is.nmr_dataset_1D}()},
\code{\link{load_and_save_functions}},
\code{\link{new_nmr_dataset_1D}()},
\code{\link{nmr_align_find_ref}()},
\code{\link{nmr_baseline_removal}()},
\code{\link{nmr_baseline_threshold}()},
\code{\link{nmr_exclude_region}()},
\code{\link{nmr_integrate_regions}()},
\code{\link{nmr_interpolate_1D}()},
\code{\link{nmr_meta_add}()},
\code{\link{nmr_meta_export}()},
\code{\link{nmr_meta_get_column}()},
\code{\link{nmr_meta_get}()},
\code{\link{nmr_normalize}()},
\code{\link{nmr_pca_build_model}()},
\code{\link{nmr_pca_outliers_filter}()},
\code{\link{nmr_pca_outliers_plot}()},
\code{\link{nmr_pca_outliers_robust}()},
\code{\link{nmr_pca_outliers}()},
\code{\link{nmr_ppm_resolution}()},
\code{\link{plot.nmr_dataset_1D}()},
\code{\link{plot_webgl}()},
\code{\link{print.nmr_dataset_1D}()},
\code{\link{rdCV_PLS_RF_ML}()},
\code{\link{rdCV_PLS_RF}()},
\code{\link{save_files_to_rDolphin}()},
\code{\link{to_ChemoSpec}()},
\code{\link{validate_nmr_dataset_peak_table}()},
\code{\link{validate_nmr_dataset}()}

Other to_rDolphin_cell functions: 
\code{\link{files_to_rDolphin_cell}()}
}
\concept{import/export functions}
\concept{nmr_dataset_1D functions}
\concept{to_rDolphin_cell functions}
